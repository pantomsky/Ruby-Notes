def twice
  yield
  yield
end

twice {puts "tresc przekazana do memtody"}

puts

def twice
  if block_given?  # sprawdzamy czy metoda zawiera block
    yield
    yield
  else
    puts "Metoda nie zawiera blocku"
  end
end

twice {puts "tresc przekazana do memtody"}
puts
twice

puts

def my_times(n)
  until n.zero?
    yield(n)
    n -= 1
  end
end

my_times(6) {puts "Nasza metoda"}
puts
my_times(6) {|x| puts "Nasza metoda wywołana #{x} razy"}
