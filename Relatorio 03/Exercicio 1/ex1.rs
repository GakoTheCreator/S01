use std::io;

fn validar_placa(placa: &str) -> bool {
    if placa.len() < 7 {
        return false;
    }

    let mut letras_maiusculas = 0;
    let mut digitos = 0;

    for c in placa.chars() {
        if c.is_ascii_uppercase() {
            letras_maiusculas += 1;
        }
        if c.is_numeric() {
            digitos += 1;
        }
    }

    letras_maiusculas >= 4 && digitos >= 2
}

fn main() {
    loop {
        let mut entrada = String::new();
        println!("Digite a placa do veiculo:");
        io::stdin().read_line(&mut entrada).expect("Erro ao ler");

        let placa = entrada.trim();

        if validar_placa(placa) {
            println!("Placa cadastrada no sistema!");
            break;
        } else {
            println!("Placa invalida. Tente novamente!");
        }
    }
}
