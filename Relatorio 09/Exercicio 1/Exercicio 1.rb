class Produto
  attr_reader :nome

  def initialize(nome, preco)
    @nome = nome
    @_preco = preco
  end

  def preco
    @_preco
  end

  def preco=(valor)
    if valor >= 5 && valor <= 200
      @_preco = valor
    else
      puts "Preço inválido!"
    end
  end

  def ficha
    "#{@nome} - R$ #{@_preco}"
  end
end

class Livro < Produto
  attr_reader :autor

  def initialize(nome, preco, autor)
    super(nome, preco)
    @autor = autor
  end

  def ficha
    super + " | Autor: #{@autor}"
  end
end

lista = [
  Produto.new("Caderno", 20),
  Livro.new("Dom Casmurro", 50, "Machado de Assis"),
  Livro.new("Memorias Postumas", 40, "Machado de Assis")
]

lista.each { |item| puts item.ficha }

lista[1].preco = 500
lista[1].preco = 80
puts lista[1].ficha
