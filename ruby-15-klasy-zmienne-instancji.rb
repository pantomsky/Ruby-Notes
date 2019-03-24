class Person

  def greet
    puts @greeting #może na sie do niej odwołac nawet jak nie istnieje
  end

  def make_greeting
    @greeting = "Witaj!" #zmienna instancji , widoczna w całym obiekcie,
    greeting = "Inne witaj" #zmienna lokalna , widoczna tylko wewnątrz metody
  end

end

o1 = Person.new
o2 = Person.new
o2.make_greeting

o1.greet
o2.greet
