package main
import "fmt"

func gerarEscalaPlantao(n int) {
	fmt.Println("--- Escala de Plantão Técnico ---")
	dia := 1
	for i := 1; i <= n; i++ {
		fmt.Println("Plantão", i, ": Dia", dia, "do mês")
		dia += 4
	}
}

func main() {
	var n int
	fmt.Print("Digite a quantidade de plantões necessários: ")
	fmt.Scanln(&n)
	gerarEscalaPlantao(n)
}
