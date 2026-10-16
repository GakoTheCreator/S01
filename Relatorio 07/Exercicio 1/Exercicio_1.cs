using System;

public class CombatenteDeGondor {
    public string Nome { get; private set; }
    public string Povo { get; private set; }
    public string Posto { get; private set; }
    public string Armamento { get; private set; } = "Desarmado";

    public CombatenteDeGondor(string nome, string povo, string posto) {
        this.Nome = nome;
        this.Povo = povo;
        this.Posto = posto;
    }

    public void Equipar(string arma) {
        this.Armamento = arma;
    }

    public void ApresentarUnidade() {
        Console.WriteLine($"Nome: {this.Nome} | Povo: {this.Povo} | Posto: {this.Posto}");
        if (this.Armamento != "Desarmado") {
            Console.WriteLine($"Arma: {this.Armamento}");
        }
        Console.WriteLine();
    }
}

public class Program {
    public static void Main() {
        CombatenteDeGondor c1 = new CombatenteDeGondor("Legolas", "Elfo", "Arqueiro");
        CombatenteDeGondor c2 = new CombatenteDeGondor("Gimli", "Anao", "Guerreiro");
        CombatenteDeGondor c3 = new CombatenteDeGondor("Boromir", "Humano", "Capitao");

        c1.Equipar("Arco Longo");
        
        c1.ApresentarUnidade();
        c2.ApresentarUnidade();
        c3.ApresentarUnidade();

        // Dava erro de compilação tentar mudar o posto direto pq o set é private
        // c2.Posto = "Rei"; 
    }
}
