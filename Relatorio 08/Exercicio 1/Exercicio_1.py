class MortoVivo:
    def __init__(self, nome, almas, estus):
        self.nome = nome
        self._almas = almas
        self.__estus = 0
        self.set_estus(estus) # Usa o setter para garantir a validacao inicial

    def get_estus(self):
        return self.__estus

    def set_estus(self, quantidade):
        if 0 <= quantidade <= 10:
            self.__estus = quantidade
        else:
            print("Quantidade de Estus inválida!")

    def mostrar_status(self):
        return f"Morto-vivo {self.nome} | Almas: {self._almas} | Estus: {self.__estus}"

class Clerigo(MortoVivo):
    def __init__(self, nome, almas, estus, milagre):
        super().__init__(nome, almas, estus)
        self.milagre = milagre

    def mostrar_status(self):
        return super().mostrar_status() + f" | Milagre: {self.milagre}"

if __name__ == "__main__":
    clerigo = Clerigo("Petrus", 2000, 5, "Cura Maior")
    print(clerigo.mostrar_status())
    
    clerigo.set_estus(15)
    clerigo.set_estus(10)
    print(clerigo.mostrar_status())

    # AttributeError: 'Clerigo' object has no attribute '__estus'
    # print(clerigo.__estus)
