from abc import ABC, abstractmethod

class IUnidadeDeRede(ABC):
    @abstractmethod
    def executar_invasao(self):
        pass

class Cyberdeck:
    def __init__(self, modelo):
        self.modelo = modelo

class OperadorNetrunner(IUnidadeDeRede):
    def __init__(self, nome, modelo_cyberdeck):
        self.nome = nome
        self.cyberdeck = Cyberdeck(modelo_cyberdeck)

    def executar_invasao(self):
        print(f"Netrunner {self.nome} usando o cyberdeck {self.cyberdeck.modelo} para quebrar o gelo (ICE) de um servidor.")

class DroneDeVigilancia(IUnidadeDeRede):
    def __init__(self, codigo):
        self.codigo = codigo

    def executar_invasao(self):
        print(f"Drone {self.codigo} interceptando o sinal da rede.")

class CelulaHacker:
    def __init__(self, nome, membros: list[IUnidadeDeRede]):
        self.nome = nome
        self.membros = membros

    def iniciar_ataque(self):
        print(f"\nCélula Hacker '{self.nome}' iniciando ataque coordenado:")
        for membro in self.membros:
            membro.executar_invasao()

if __name__ == "__main__":
    netrunner = OperadorNetrunner("Lucy", "Militech Paraline")
    drone = DroneDeVigilancia("DRN-99")

    # Agregacao: a celula recebe os membros prontos
    equipe = [netrunner, drone]
    celula = CelulaHacker("Edgerunners", equipe)

    celula.iniciar_ataque()

    # Gera o erro "TypeError: Can't instantiate abstract class" pq nao podemos instanciar interfaces
    # unidade = IUnidadeDeRede()
