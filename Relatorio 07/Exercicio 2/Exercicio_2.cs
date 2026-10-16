using System;
using System.Collections.Generic;

public class Pokemon {
    public string Especie { get; set; }
    public int Nivel { get; private set; }

    public Pokemon(string especie, int nivel) {
        this.Especie = especie;
        this.Nivel = nivel;
    }

    public virtual void Atacar() {
        Console.WriteLine($"{this.Especie} de nivel {this.Nivel} usou um ataque normal.");
    }
}

public class TipoPlanta : Pokemon {
    public TipoPlanta(string especie, int nivel) : base(especie, nivel) {
    }

    public override void Atacar() {
        // nao chama o base pq ele ataca de um jeito proprio
        Console.WriteLine($"{this.Especie} atacou com Folha Navalha!");
    }
}

public class TipoEletrico : Pokemon {
    public TipoEletrico(string especie, int nivel) : base(especie, nivel) {
    }

    public override void Atacar() {
        base.Atacar(); // ataca normal primeiro
        Console.WriteLine($"E depois {this.Especie} deu choque do trovao!");
    }
}

public class Program {
    public static void Main() {
        List<Pokemon> time = new List<Pokemon>();
        time.Add(new TipoPlanta("Bulbasaur", 12));
        time.Add(new TipoEletrico("Pikachu", 15));
        time.Add(new Pokemon("Rattata", 5));

        Console.WriteLine($"Total de pokemons em campo: {time.Count}
");

        foreach (var p in time) {
            p.Atacar();
            Console.WriteLine("---");
        }
    }
}
