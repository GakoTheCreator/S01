class HeroiOverwatch:
    def __init__(self, codinome, funcao):
        self.codinome = codinome
        self.funcao = funcao

    def usar_suprema(self):
        print(f"{self.codinome} ativou uma suprema genérica!")

class HeroiTanque(HeroiOverwatch):
    def usar_suprema(self):
        print(f"{self.codinome} ativou a suprema de Tanque (Escudo Reforçado)!")

class HeroiSuporte(HeroiOverwatch):
    def usar_suprema(self):
        print(f"{self.codinome} ativou a suprema de Suporte (Barreira de Som)!")

    def curar_equipe(self):
        print(f"{self.codinome} está curando a equipe!")

if __name__ == "__main__":
    time: list[HeroiOverwatch] = [
        HeroiOverwatch("Tracer", "Dano"),
        HeroiTanque("Reinhardt", "Tanque"),
        HeroiSuporte("Lucio", "Suporte")
    ]

    for heroi in time:
        heroi.usar_suprema()
        if isinstance(heroi, HeroiSuporte):
            heroi.curar_equipe()
        print("-" * 20)
