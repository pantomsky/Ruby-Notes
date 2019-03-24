# .times
puts "Iterator .times"

5.times do
  puts "Hello!"
end

# alternatywny zapis
puts "\nIterator .times"

5.times {puts "Hello!"}


puts "\nIterator .times z indeksem"

5.times do |x|
  puts "Hello! #{x}"
end


# .each
puts "\nIterator .each"

["kot","pies", "słoń"].each_with_index do |animal, i|
  puts "#{animal}: #{i}"
end


# .upto
puts "\nIterator .upto"

3.upto(8) { |i| puts i }

# .downto
puts "\nIterator .downto"

8.downto(3) {|i| puts i }

# .step iteracja z krokiem
puts "\nIterator step z krokiem co 3"

4.step(15, 3) { |i| puts i }
