puts "Wpisz jakiś text.... exit aby zakończyć"

until (text = gets.chomp) == "exit"
  puts "> #{text}"
end
