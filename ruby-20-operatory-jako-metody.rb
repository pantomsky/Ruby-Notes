class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def +(other_person)
    Person.new([self.name, other_person.name].join(" i "))
  end

  def ==(other_person)
    self.name == other_person.name
  end

end

p1 = Person.new("Paweł")
p2 = Person.new("Gaweł")

p12 = p1 + p2

puts p12.name

p3 = Person.new("Paweł")
puts p1 == p2
puts p2 == p3
puts p3 == p1
