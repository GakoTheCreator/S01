using System;
using System.Collections.Generic;

public class Grimorio {
    public string FeiticoFavorito { get; set; } = "Nenhum";

    public void Abrir() {
        Console.WriteLine($"Abrindo o grimorio... magia favorita atual: {this.FeiticoFavorito}");
    }
}

public class Companheiro {
    public string Nome { get; set; }
    public string Funcao { get; set; }

    public Companheiro(string nome, string funcao) {
        this.Nome = nome;
        this.Funcao = funcao;
    }

    public void Apresentar() {
        Console.WriteLine($"Sou {this.Nome}, o {this.Funcao} do grupo.");
    }
}

public class Maga {
    public string Nome { get; set; }
    public Grimorio Grimorio { get; private set; }
    
    private List<Companheiro> companheiros;

    public Maga(string nome) {
        this.Nome = nome;
        // Composicao: o grimorio eh instanciado direto aqui, nasce junto com a Maga
        this.Grimorio = new Grimorio(); 
        this.companheiros = new List<Companheiro>();
    }

    // Agregacao: os companheiros vem de fora, a maga so guarda a referencia
    public void Recrutar(Companheiro c) {
        this.companheiros.Add(c);
    }

    public void MostrarGrupo() {
        Console.WriteLine($"Grupo da {this.Nome}:");
        foreach (var c in this.companheiros) {
            c.Apresentar();
        }
    }
}

public class Program {
    public static void Main() {
        // Criando os companheiros antes (Agregacao)
        Companheiro stark = new Companheiro("Stark", "Guerreiro");
        Companheiro fern = new Companheiro("Fern", "Maga aprendiz");

        Maga frieren = new Maga("Frieren");

        frieren.Recrutar(stark);
        frieren.Recrutar(fern);

        frieren.Grimorio.FeiticoFavorito = "Zoltraak";

        frieren.MostrarGrupo();
        Console.WriteLine();
        frieren.Grimorio.Abrir();
        
        /*
         * Comentario pro relatorio:
         * Composicao: A Maga cria seu proprio Grimorio no construtor. Se a Maga deixar de existir, o Grimorio tbm vai.
         * Agregacao: Companheiros Fern e Stark sao criados no Main e passados pra Maga (Recrutar). Eles existem de forma independente dela.
         */
    }
}
