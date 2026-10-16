using System;
using System.Collections.Generic;

public class EntidadeCosmica {
    public string Nome { get; set; }
    public string Origem { get; set; } = "Desconhecida";

    public EntidadeCosmica(string nome) {
        this.Nome = nome;
    }

    public virtual void Manifestar() {
        Console.WriteLine($"A entidade {this.Nome} apareceu!");
        if (this.Origem != "Desconhecida") {
            Console.WriteLine($"Ela veio de: {this.Origem}");
        }
    }
}

public class Profundo : EntidadeCosmica {
    public Profundo(string nome) : base(nome) {
    }

    public override void Manifestar() {
        // Nao chama o base pq sobescreve total o comportamento do pai
        Console.WriteLine($"O profundo {this.Nome} saiu da agua de Innsmouth.");
    }
}

public class MiGo : EntidadeCosmica {
    public MiGo(string nome) : base(nome) {
    }

    public override void Manifestar() {
        base.Manifestar(); // aproveita o log da classe pai
        Console.WriteLine($"O Mi-Go {this.Nome} faz um barulho estranho no ambiente.");
    }
}

public class Pesquisador {
    public string Nome { get; set; }
    private List<EntidadeCosmica> catalogo;

    public Pesquisador(string nome) {
        this.Nome = nome;
        this.catalogo = new List<EntidadeCosmica>();
    }

    public void Catalogar(EntidadeCosmica e) {
        this.catalogo.Add(e);
    }

    public void LerCatalogo() {
        Console.WriteLine($"Catalogo do pesquisador {this.Nome}:");
        foreach (var e in this.catalogo) {
            e.Manifestar();
            Console.WriteLine("---");
        }
    }
}

public class Program {
    public static void Main() {
        EntidadeCosmica e1 = new Profundo("Pai Dagon");
        
        EntidadeCosmica e2 = new MiGo("Fungo");
        e2.Origem = "Yuggoth";
        
        EntidadeCosmica e3 = new EntidadeCosmica("A Cor que Caiu do Espaco");
        
        Pesquisador p = new Pesquisador("Henry Armitage");
        p.Catalogar(e1);
        p.Catalogar(e2);
        p.Catalogar(e3);

        p.LerCatalogo();
    }
}
