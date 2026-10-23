module Avaliavel
  def avaliar
    raise NotImplementedError
  end
end

module Premiavel
  def premiar
    puts "#{nome} foi premiado!"
  end
end

class Pessoa
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end
end

class Professor < Pessoa
  include Avaliavel

  def avaliar
    puts "#{nome} avalia as provas."
  end
end

class Aluno < Pessoa
  include Avaliavel
  include Premiavel

  def avaliar
    puts "#{nome} faz a prova."
  end
end

class Turma
  def initialize(nome)
    @nome = nome
    @pessoas = []
  end

  def registrar(pessoa)
    @pessoas << pessoa
  end

  def avaliar_todos
    puts @nome
    @pessoas.each { |p| p.avaliar }
  end

  def premiar_alunos
    premiaveis = @pessoas.select { |p| p.respond_to?(:premiar) }
    premiaveis.each { |p| p.premiar }
  end
end

professor = Professor.new("Carlos")
aluno1 = Aluno.new("Marina")
aluno2 = Aluno.new("Lucas")

turma = Turma.new("Turma de POO")
turma.registrar(professor)
turma.registrar(aluno1)
turma.registrar(aluno2)

turma.avaliar_todos
turma.premiar_alunos
