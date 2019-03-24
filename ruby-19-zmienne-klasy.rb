class Person

  @@population = 0 # zmienna klasy która na początku pryzjmuje wartość zero

 attr_accessor :greeting # <----- to odwołanie zastępuje poniższe dwie metody !!!
                          # w tym przypadku :greeting jest atrybutem klasy

  def initialize(name)          #metoda ta wywyływana jest przez konstruktor
    puts "Jestem w konstruktorze"
    @@population += 1
  end

  def greet
    puts @greeting
  end

  def pop
    @@population
  end

  def self.population #metoda klasy, aby ją stworyzć używamy "self"
    @@population
  end

end



o1 = Person.new("Ruby")   # to jest konstruktor
o1.greeting=("hej")

o2 = Person.new("JS")  # to jest konstruktor

puts o1.pop
puts Person.population
