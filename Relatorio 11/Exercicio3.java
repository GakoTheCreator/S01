import java.util.HashMap;

interface Sobrenatural {
    void manifestar();
}

class Alienigena implements Sobrenatural {
    private String nome;

    public Alienigena(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome + " (alienígena) surge de uma nave e levita no ar!");
    }
}

class EspiritoYoukai implements Sobrenatural {
    private String nome;

    public EspiritoYoukai(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome + " (espírito) aparece sussurrando no escuro...");
    }
}

class MapaDeAvistamentos {
    private HashMap<String, Sobrenatural> avistamentos;

    public MapaDeAvistamentos() {
        this.avistamentos = new HashMap<>();
    }

    public void registrar(String local, Sobrenatural ser) {
        avistamentos.put(local, ser);
    }

    public void investigar(String local) {
        Sobrenatural ser = avistamentos.get(local);
        if (ser == null) {
            System.out.println("O local " + local + " está tranquilo.");
        } else {
            ser.manifestar();
        }
    }
}

public class Exercicio3 {
    public static void main(String[] args) {
        Alienigena serpo = new Alienigena("Serpo");
        EspiritoYoukai turbovovo = new EspiritoYoukai("Turbo Vovó");

        MapaDeAvistamentos mapa = new MapaDeAvistamentos();
        mapa.registrar("Túnel abandonado", turbovovo);
        mapa.registrar("Campo de milho", serpo);

        mapa.investigar("Túnel abandonado");
        mapa.investigar("Campo de milho");
        mapa.investigar("Praça central");
    }
}
