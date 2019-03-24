class Person

# ----- # WARNING: ------
  # attr_accessor :greeting # <----- to odwołanie zastępuje poniższe dwie metody !!!
                          # w tym przypadku :greeting jest atrybutem klasy

  attr_reader :greeting # umożliwia wyłącznie odczyt
  attr_writer :greeting # umoziwia wyłąłcznie zapis

#  {
#  def greeting=(new_greeting) # metoda "greeting=" typowy styl przypisania tzw "seter"
#    @greeting = new_greeting
#  end

#  def greeting    # metoda wywołania tzw "getter"
#    @greeting
#  end
#  }

end

o1 = Person.new  
o2 = Person.new
o2.greeting = "Hej" # ustawia zmienna @greeting w metodzie "greeting="

puts o2.greeting  #wywyłuje metode "greeting"
