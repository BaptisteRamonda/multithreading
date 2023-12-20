#include <iostream>
#include <cpr/cpr.h>

int main() {
    // URL du serveur local
    std::string url = "http://localhost:8000/"; // Remplacez "port" par le port de votre serveur et "endpoint" par le point d'accès de votre API

    // Effectuer une requête GET
    cpr::Response response = cpr::Get(cpr::Url{url});

    // Vérifier si la requête a réussi
    if (response.status_code == 200) {
        // Le contenu de la réponse est stocké dans response.text
        std::cout << "Réponse du serveur : " << response.text << std::endl;
    } else {
        // En cas d'échec de la requête, afficher le code d'erreur et le message
        std::cerr << "Erreur de requête : " << response.status_code << " - " << response.error.message << std::endl;
    }

    return 0;
}
