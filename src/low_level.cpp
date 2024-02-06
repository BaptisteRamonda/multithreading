#include <cpr/cpr.h>       
#include <unistd.h>         
#include <Eigen/Dense>      
#include <chrono>           
#include <iostream> 
#include "nlohmann/json.hpp"    

// CE CODE EST EN PARTIE TIRE DE CELUI DE CONSTANT ROUX SUITE A DES PROBLEMES DE COMPILATEUR C ET DE WSL SOUS WINDOWS YANT FAIT PERDRE ENORMEMENT DE TEMPS
// ( PROBLEMES CONSTATES EN PERSONNE PAR LE PROFESSEUR -> EVOCATON DE LA MISE EN PLACE D'UN DOCKER    

#define CODE_SUCCESS 200    
#define NB_CORES 4         

class Minion {
private:
    int identifier;         // Identifiant unique du Minion
    int size;               // Taille des matrices et des vecteurs

    Eigen::MatrixXd A;      // Matrice A pour les calculs
    Eigen::VectorXd X;      // Vecteur X pour les résultats
    Eigen::VectorXd b;      // Vecteur b pour les calculs

    double execution_time;  // Temps d'exécution du travail du Minion

public:
    // Constructeur pour initialiser et effectuer le travail du Minion
    Minion() {
        while (true) {
            // Tenter l'initialisation jusqu'à ce qu'elle réussisse
            while (!initialization());

            // Commencer le travail du Minion après une initialisation réussie
            work();
        }
    }

    // Fonction pour initialiser le Minion en récupérant des données depuis un serveur
    bool initialization() {
        // Faire une requête GET vers le serveur
        cpr::Response response = cpr::Get(cpr::Url{"http://localhost:8000"});

        // Vérifier si la requête a réussi (code de statut HTTP 200)
        if (response.status_code != CODE_SUCCESS) {
            // Si la requête échoue, retourner false pour indiquer un échec d'initialisation
            return false;
        }

        // Analyser la réponse JSON
        nlohmann::json data_json = nlohmann::json::parse(response.text);

        // Extraire l'identifiant et la taille des données JSON
        identifier = data_json["identifier"];
        size = data_json["size"];

        // Redimensionner les matrices A et le vecteur b en fonction de la taille extraite
        A.resize(size, size);
        b.resize(size);

        // Remplir la matrice A et le vecteur b avec les valeurs des données JSON
        for (unsigned long i = 0; i < size; i++) {
            for (unsigned long j = 0; j < size; j++) {
                A(i, j) = data_json["A"][i][j];
            }
            b(i) = data_json["b"][i];
        }

        // Afficher un message indiquant une initialisation réussie
        std::cout << "Minion " << getpid() << " pour la tâche " << identifier
                  << " initialisé" << std::endl;

        // Retourner true pour indiquer une initialisation réussie
        return true;
    }

    // Fonction pour effectuer le travail du Minion en résolvant un système linéaire AX=b
    double work() {
        // Résoudre le système linéaire ax=b et mesurer le temps de début et de fin
        const auto start_time = std::chrono::high_resolution_clock::now();
        X = A.lu().solve(b);
        const auto end_time = std::chrono::high_resolution_clock::now();

        // Calculer le temps d'exécution
        execution_time = std::chrono::duration_cast<std::chrono::duration<double>>(
                end_time - start_time)
                .count();

        // Afficher l'identifiant de la tâche et le temps d'exécution
        std::cout << "Minion " << getpid() << " a terminé la tâche " << identifier
                  << " en " << execution_time << " secondes" << std::endl;

        // Retourner le temps d'exécution
        return execution_time;
    }
};

int main() {
    
    // Définir le nombre de threads pour le traitement parallèle en utilisant la bibliothèque Eigen
    Eigen::setNbThreads(NB_CORES);

    // Créer une instance de la classe Minion
    Minion minion;

    // Quitter le programme
    exit(0);
}

