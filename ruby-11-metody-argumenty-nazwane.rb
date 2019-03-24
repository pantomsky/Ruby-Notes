# warto z tego kożyać, kod jesty czytelniejszy

def greet(name, salutation:"Hej", exclamation:)
  puts "#{salutation} #{name}#{exclamation}"
end

greet("Ruby", salutation: "Yo", exclamation: "!x!x!")
