class Ferramenta
  def usar(servico)
    puts "Ferramenta usada em: #{servico}"
  end
end

class Cliente
  attr_reader :numero, :nome

  def initialize(numero, nome)
    @numero = numero
    @nome = nome
  end
end

class Oficina
  def initialize
    @ferramenta = Ferramenta.new
    @clientes = []
  end

  def receber(cliente)
    @clientes << cliente
    puts "#{cliente.numero} - #{cliente.nome}"
  end

  def atender(servico)
    @clientes.each { |c| puts "#{c.numero} - #{c.nome}" }
    @ferramenta.usar(servico)
  end
end

cliente1 = Cliente.new(1, "Ana")
cliente2 = Cliente.new(2, "Bruno")

oficina = Oficina.new
oficina.receber(cliente1)
oficina.receber(cliente2)
oficina.atender("Troca de óleo")
