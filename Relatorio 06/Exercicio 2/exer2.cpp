#include <iostream>
using namespace std;

class LinkSocial {
private:
    string nome;
    string arcana;
    int rank;

public:
    void setNome(string novoNome) {
        nome = novoNome;
    }

    void setArcana(string novaArcana) {
        arcana = novaArcana;
    }

    void setRank(int novoRank) {
        rank = novoRank;
    }

    string getNome() {
        return nome;
    }

    string getArcana() {
        return arcana;
    }

    int getRank() {
        return rank;
    }

    void subirRank() {
        rank += 1;
    }
};

int main() {
    LinkSocial link;
    link.setNome("Yukari Takeba");
    link.setArcana("Lovers");
    link.setRank(1);

    link.subirRank();

    cout << "--- Dados do Link Social ---" << endl;
    cout << "Nome: " << link.getNome() << endl;
    cout << "Arcana: " << link.getArcana() << endl;
    cout << "Rank: " << link.getRank() << endl;

    return 0;
}
