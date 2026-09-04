use std::io;

fn acertou_o_alvo(palpite: i32, numero_secreto: i32) -> bool {
    let diferenca = (palpite - numero_secreto).abs();
    diferenca <= 5
}

fn main() {
    let numero_secreto: i32 = 13;

    loop {
        let mut entrada = String::new();
        println!("Digite seu palpite:");
        io::stdin().read_line(&mut entrada).expect("Erro ao ler");

        let palpite: i32 = entrada.trim().parse().unwrap_or(0);

        if acertou_o_alvo(palpite, numero_secreto) {
            let distancia = (palpite - numero_secreto).abs();
            println!(
                "Voce acertou! Ficou a apenas {} unidades do numero secreto!",
                distancia
            );
            break;
        } else {
            println!("Voce passou longe! Tente novamente.");
        }
    }
}
