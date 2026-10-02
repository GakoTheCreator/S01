#include <iostream>
using namespace std;

class Banda {
public:
    string nome;
    int integrantes;
    float potenciaSom;
    int energia;

    void duelar(Banda &rival) {
        cout << nome << " vai se apresentar contra " << rival.nome << "!" << endl;
        rival.energia -= potenciaSom;
    }
};

int main() {
    Banda desafiante;
    desafiante.nome = "Furia de Aco";
    desafiante.integrantes = 4;
    desafiante.potenciaSom = 85.5;
    desafiante.energia = 100;

    Banda rival;
    rival.nome = "Trovao Negro";
    rival.integrantes = 5;
    rival.potenciaSom = 70.0;
    rival.energia = 100;

    desafiante.duelar(rival);

    cout << "--- Status apos o duelo ---" << endl;
    cout << desafiante.nome << " | Energia: " << desafiante.energia << endl;
    cout << rival.nome << " | Energia: " << rival.energia << endl;

    return 0;
}
