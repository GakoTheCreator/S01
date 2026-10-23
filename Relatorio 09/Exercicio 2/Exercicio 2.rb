class Jogador
  attr_reader :nome, :posicao

  def initialize(nome, posicao)
    @nome = nome
    @posicao = posicao
  end

  def jogar(partida)
    raise NotImplementedError, "A classe filha precisa implementar jogar"
  end
end

class Atacante < Jogador
  def jogar(partida)
    puts "#{nome} (#{posicao}) ataca na partida #{partida}"
  end
end

class Goleiro < Jogador
  def jogar(partida)
    puts "#{nome} (#{posicao}) defende na partida #{partida}"
  end
end

class Tecnico
  def initialize(nome)
    @nome = nome
    @elenco = []
  end

  def convocar(jogador)
    @elenco << jogador
  end

  def escalar(partida)
    puts "Técnico #{@nome} - #{partida}"
    @elenco.each { |j| j.jogar(partida) }
  end

  def escalacao
    @elenco.map { |j| "#{j.class} #{j.nome}" }
  end
end

atacante = Atacante.new("Neymar", "Ponta")
goleiro = Goleiro.new("Alisson", "Gol")
tecnico = Tecnico.new("Tite")

tecnico.convocar(atacante)
tecnico.convocar(goleiro)
tecnico.escalar("Final")
tecnico.escalacao.each { |linha| puts linha }

generico = Jogador.new("Teste", "Meio")
