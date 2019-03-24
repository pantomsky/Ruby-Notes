class Person

  def greet
    puts greeting
  end

  def greeting
    "Witaj! Jestem #{object_id}"
  end

end

o1 = Person.new
o2 = Person.new

o1.greet
o2.greet
