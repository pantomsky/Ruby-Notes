class Person

 attr_accessor :greeting # <----- to odwołanie zastępuje poniższe dwie metody !!!
                          # w tym przypadku :greeting jest atrybutem klasy

  def initialize(name)          #metoda ta wywyływana jest przez konstruktor
    puts "Jestem w konstruktorze"
    @name = name
  end

end

o1 = Person.new("Ruby")   # to jest konstruktor
o2 = Person.new("JS")  # to jest konstruktor

o2.greeting = "Hej" # ustawia zmienna @greeting w metodzie "greeting="

puts o2.greeting  #wywyłuje metode "greeting"
