def greet(what)
  "Hello #{what}"
end
puts greet("Ty").class
puts greet("Ty")

puts

greet1 = proc {|what| "Hello #{what}"}
puts greet1.class
puts greet1.call("Ty")
puts greet1.call("Ty").class

puts

greet2 = lambda { |what| "Hello #{what}"}
puts greet2.class
puts greet2.call("Ty")
puts greet2.call("Ty").class

puts
# greet - metoda wymaga argumentu do wywyłania
puts "Proc:"
puts greet1.call # proc nie wymaga podawania argumentu
puts
puts "Lambda:"
#puts greet2.call # lambda pilnuje ilośći argumentów


a =123

def test
  puts a
end

# Proc i Lambda widzą zmienne lokalne w otoczeniu
puts
test1 = lambda { puts a }
test1.call
puts
test2 = proc { puts a }
test2.call
