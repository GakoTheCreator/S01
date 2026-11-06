import java.util.ArrayList;

abstract class Monstro {
    private String nome;

    public Monstro(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract String receita();
}

class Slime extends Monstro {
    public Slime(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Cozinhar em fogo baixo até virar uma geleia e servir como sobremesa.";
    }
}

class Mandragora extends Monstro {
    public Mandragora(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Fritar em tempura, com cuidado para não ouvir o grito.";
    }
}

class Panela {
    private String material;

    public Panela(String material) {
        this.material = material;
    }

    public String getMaterial() {
        return material;
    }
}

class Cozinheiro {
    private String nome;
    private Panela panela;
    private ArrayList<Monstro> ingredientes;

    public Cozinheiro(String nome, String materialDaPanela) {
        this.nome = nome;
        this.panela = new Panela(materialDaPanela);
        this.ingredientes = new ArrayList<>();
    }

    public void adicionarIngrediente(Monstro monstro) {
        ingredientes.add(monstro);
    }

    public void servirBanquete() {
        System.out.println("Cozinheiro: " + nome + " | Panela de " + panela.getMaterial());
        for (Monstro m : ingredientes) {
            System.out.println("- " + m.getNome() + ": " + m.receita());
        }
    }
}

public class Exercicio4 {
    public static void main(String[] args) {
        Slime slime = new Slime("Slime Verde");
        Mandragora mandragora = new Mandragora("Mandrágora Gritona");

        Cozinheiro senshi = new Cozinheiro("Senshi", "ferro");
        senshi.adicionarIngrediente(slime);
        senshi.adicionarIngrediente(mandragora);

        senshi.servirBanquete();

        /*
         * COMPOSIÇÃO: Cozinheiro -> Panela.
         * A Panela é criada dentro do construtor do Cozinheiro (new Panela(...)).
         * Ela pertence a ele e nasce com ele: sem Cozinheiro, essa Panela não existe.
         * Dependência total.
         *
         * AGREGAÇÃO: Cozinheiro -> Monstro.
         * Os Monstros são criados fora (na main) e só são recebidos por
         * adicionarIngrediente(). Já existiam antes do Cozinheiro e continuam
         * existindo sem ele. Ligação fraca (apenas referência).
         */
    }
}
