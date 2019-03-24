class Person

 attr_accessor :greeting # <----- to odwołanie zastępuje poniższe dwie metody !!!
                          # w tym przypadku :greeting jest atrybutem klasy

  def initialize(name)          #metoda ta wywyływana jest przez konstruktor
    puts "Jestem w konstruktorze"
    @name = name
  end

  def greet
    puts @greeting
  end

  def move
    "poruszma się "
  end

end

class LoudPerson < Person

  def greet # nadpiszuje metode "move" z klasy "Person"
    puts @greeting.upcase
  end

  def move # nie nadpisuje metody "move" z klasy "Person"
    super + "bardzo głośno" # dzieki wyrażeniu "super" które przenosci tutaj ciało medoty "move" z klasy "Person"
  end

end


o1 = LoudPerson.new("Ruby")   # to jest konstruktor
o1.greeting=("hej")
o2 = Person.new("JS")  # to jest konstruktor
o2.greeting=("hej")

o2.greet
o1.greet

puts o2.move
puts o1.move

puts LoudPerson
puts LoudPerson.superclass # pokazuje klase nadrzedną
puts LoudPerson.superclass.superclass
