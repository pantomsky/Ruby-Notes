module Addressable # definicja miksina
  attr_accessor :zip_code, :city, :street

  def full_address
    "#{street}\n#{zip_code} #{city}\nPolska"
  end
end

class Person
  include Addressable # dodanie mixina
end

class School
  include Addressable
end

p = Person.new
p.zip_code = "12-345"
p.street = "al. Jerozolimskie 200"
p.city = "Warszawa"

puts p.full_address
