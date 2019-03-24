class NameLength
  include Comparable # mixin porównujący wymaga metody "<=>" // implementacja metody z biblioteki

  attr_accessor :name  # konstruktor przechowujący nazwe

  def initialize(name)
    @name = name
  end

  def <=>(other)  # metoda niezbedna do działania mixina
    if @name.length < other.name.length
      -1
    elsif @name.length == other.name.length
      0
    else
      1
    end
#--------------------------------------------
    @name.length <=> other.name.length   # zapis uproszczony pozwalający zastapić to "if"
#--------------------------------------------
  end


end

n1 = NameLength.new("kot")
n2 = NameLength.new("pies")

puts n2 < n1


class Colors

  include Enumerable

  def each          #dzieki prawidłowemu zainplementowaniu  metody "each" możemy
    yield "red"     #kozystac z metod dostepnych na tabliach
    yield "green"
    yield "blue"
    yield "yellow"
  end
end

c = Colors.new
c.each do |color|  
  puts color
end

puts c.map { |e| e.upcase }.inspect
puts c.select { |e| e.length.even? }.inspect
puts c.select { |e| e.length.odd? }.inspect
