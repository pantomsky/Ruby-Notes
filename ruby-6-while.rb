x = 0
# przykład`
while x < 5 do
  puts "Hello!"
  x += 1
end


# lepiej stosowac .times

5.times do
  puts "Hello!"
end

# alternatywny zapis
5.times {puts "Hello!"}


5.times do |x|
  puts "Hello! #{x}"
end
