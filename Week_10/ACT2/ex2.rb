module Formula
  def perimetro(base, altura = base)
    per = 2 * base + 2 * altura
    puts "Perimetro: #{per}"
  end

  def area(base, altura = base)
    puts "Area: #{base * altura}"
  end
end

class Rectangulo
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lados
    print "Base: #{@base}, altura: #{@altura}"
  end
  
  include Formula
end

class Cuadrado
  def initialize(lado)
    @lado = lado
  end

  def lados
    print "Lado: #{lado}"
  end

  include Formula
end

Rectangulo.new(2,4).area(2,4)
Rectangulo.new(2,4).perimetro(2,4)

Cuadrado.new(4).area(4)
Cuadrado.new(4).perimetro(4)