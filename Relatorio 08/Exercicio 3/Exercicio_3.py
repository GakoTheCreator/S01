class Persona:
    def __init__(self, nome, arcano):
        self.nome = nome
        self.arcano = arcano

    def invocar(self):
        print(f"Persona invocada: {self.nome} (Arcano: {self.arcano})")

class Aliado:
    def __init__(self, nome, codinome):
        self.nome = nome
        self.codinome = codinome

class Lider:
    def __init__(self, codinome):
        self.codinome = codinome
        # Composicao: A Persona eh criada junto com o Lider e morre com ele
        self.persona = Persona("Arsène", "Louco") 
        self._equipe = []

    def recrutar(self, aliado: Aliado):
        # Agregacao: O aliado existe fora da classe e eh apenas referenciado aqui
        self._equipe.append(aliado)

    def infiltrar(self, palacio):
        print(f"--- Infiltrando o Palácio de {palacio} ---")
        self.persona.invocar()
        print(f"Líder: {self.codinome}")
        print("Equipe presente:")
        for aliado in self._equipe:
            print(f"- {aliado.nome} (Codinome: {aliado.codinome})")

if __name__ == "__main__":
    ryuji = Aliado("Ryuji Sakamoto", "Skull")
    ann = Aliado("Ann Takamaki", "Panther")

    joker = Lider("Joker")
    joker.recrutar(ryuji)
    joker.recrutar(ann)

    joker.infiltrar("Kamoshida")

    '''
    Explicacao:
    Composicao: Ocorre na relacao entre Lider e Persona. A Persona eh instanciada diretamente no __init__ de Lider, significando que depende totalmente da existencia do Lider.
    Agregacao: Ocorre na relacao entre Lider e Aliado. Ryuji e Ann sao criados independentemente na main e passados por parametro no metodo recrutar. Se o Lider sumir, os aliados continuam existindo.
    '''
