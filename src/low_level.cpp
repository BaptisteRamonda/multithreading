#include <cpr/cpr.h>
#include <Eigen/Dense>
#include <iostream>
#include <chrono>
#include <thread>
#include "nlohmann/json.hpp"

#define CODE_SUCCESS 200
#define NB_CORES 4

class Minion {
private:
    int identifier;
    int size;
    Eigen::MatrixXd A;
    Eigen::VectorXd X;
    Eigen::VectorXd b;
    double execution_time;

public:
    Minion() = default;

    bool initialization() {
        cpr::Response response = cpr::Get(cpr::Url{"http://localhost:8000"});
        if (response.status_code != CODE_SUCCESS) {
            return false;
        }

        nlohmann::json data_json = nlohmann::json::parse(response.text);
        identifier = data_json["identifier"];
        size = data_json["size"];

        A = Eigen::Map<const Eigen::MatrixXd>(
            data_json["A"].get<std::vector<double>>().data(), size, size);
        b = Eigen::Map<const Eigen::VectorXd>(
            data_json["b"].get<std::vector<double>>().data(), size);

        std::cout << "Minion " << std::this_thread::get_id() << " for task " << identifier
                  << " initialized" << std::endl;

        return true;
    }

    double work() {
        const auto start_time = std::chrono::high_resolution_clock::now();
        X = A.lu().solve(b);
        const auto end_time = std::chrono::high_resolution_clock::now();

        execution_time = std::chrono::duration_cast<std::chrono::duration<double>>(
            end_time - start_time).count();

        std::cout << "Minion " << std::this_thread::get_id() << " finished task " << identifier
                  << " in " << execution_time << " seconds" << std::endl;

        return execution_time;
    }
};

int main() {
    Eigen::setNbThreads(NB_CORES);

    Minion minion;
    while (!minion.initialization());

    minion.work();

    return 0;
}
