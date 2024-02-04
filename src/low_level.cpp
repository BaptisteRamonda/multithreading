#include <cpr/cpr.h>
#include <unistd.h>

#include <Eigen/Dense>
#include <chrono>
#include <iostream>
#include "nlohmann/json.hpp"

// Define a constant representing a successful HTTP status code
#define CODE_SUCCESS 200

// Define a constant representing a successful HTTP status code
#define NB_CORES 4

class Minion {
private:
    int identifier;  // Unique identifier for the Minion
    int size;        // Size of matrices and vectors

    Eigen::MatrixXd A;  // Matrix A for computations
    Eigen::VectorXd X;  // Vector X for results
    Eigen::VectorXd b;  // Vector b for computations

    double execution_time;  // Execution time of the Minion's work

public:
    /**
     * @brief Constructs a new Minion object.
     *
     * The constructor attempts to initialize the Minion by continuously calling
     * the initialization function until successful. Once initialized, it proceeds
     * to perform the Minion's work by calling the private work() function.
     *
     * Note: The constructor features an infinite loop, continually trying to
     * initialize the Minion. This could lead to a perpetual loop if
     * initialization is never successful.
     */
    Minion() {
        while (true) {
            // Keep trying to initialize until successful
            while (!initialization());

            // Start the Minion's work after successful initialization
            work();
        }
    }

    /**
     * @brief Initializes the Minion by fetching data from a server and populating
     * its internal data structures.
     *
     * This function makes a GET request to a specified server URL, parses the
     * response as JSON, and extracts relevant information such as the Minion's
     * identifier, the size of matrices and vectors, and the actual matrix (A) and
     * vector (b) data. The extracted data is then used to resize and populate the
     * internal matrices and vectors of the Minion.
     *
     * @return true if initialization is successful.
     * @return false if initialization fails, typically due to an unsuccessful
     * server request or invalid data.
     */
    bool initialization() {
        // Make a GET request to the server
        cpr::Response response = cpr::Get(cpr::Url{"http://localhost:8000"});

        // Check if the request was successful (HTTP status code 200)
        if (response.status_code != CODE_SUCCESS) {
            // If not successful, return false to indicate initialization failure
            return false;
        }

        // Parse the response text as JSON
        nlohmann::json data_json = nlohmann::json::parse(response.text);

        // Extract identifier and size from the JSON data
        identifier = data_json["identifier"];
        size = data_json["size"];

        // Resize matrices A and vector b based on the extracted size
        A.resize(size, size);
        b.resize(size);

        // Fill matrix A and vector b with values from the JSON data
        for (unsigned long i = 0; i < size; i++) {
            for (unsigned long j = 0; j < size; j++) {
                A(i, j) = data_json["A"][i][j];
            }
            b(i) = data_json["b"][i];
        }

        // Print a message indicating successful initialization
        std::cout << "Minion " << getpid() << " for task " << identifier
                  << " initialized" << std::endl;

        // Return true to indicate successful initialization
        return true;
    }

    /**
     * @brief Performs the Minion's work by solving a linear system AX=b.
     *
     * This function utilizes the Eigen library to solve a linear system AX=b,
     * where A is a matrix and B is a vector. The matrix A and vector b are
     * obtained during the initialization process. The solution is stored in the
     * internal vector X. The execution time of the task is measured, and the
     * solution is printed to the console for debugging purposes.
     *
     * @return double The execution time of the task in seconds.
     */
    double work() {
        // solve linear system ax=b and measure start and stop time
        const auto start_time = std::chrono::high_resolution_clock::now();
        X = A.lu().solve(b);
        const auto end_time = std::chrono::high_resolution_clock::now();

        // compute execution time
        execution_time = std::chrono::duration_cast<std::chrono::duration<double>>(
                end_time - start_time)
                .count();

        // print the task id and the execution time
        std::cout << "Minion " << getpid() << " finished task " << identifier
                  << " in " << execution_time << " seconds" << std::endl;

        // return execution time
        return execution_time;
    }
};

int main() {
    /*
     The main purpose of this C++ code is to demonstrate the initialization and
     usage of a Minion object, utilizing Eigen library for matrix computations. It
     sets the number of threads for parallel processing using Eigen's setNbThreads
     function, creates a Minion instance, and then exits the program.
    */
    // Set the number of threads for parallel processing using Eigen library
    Eigen::setNbThreads(NB_CORES);

    // Create an instance of the Minion class
    Minion minion;

    // Exit the program
    exit(0);
}