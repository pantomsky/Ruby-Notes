x = 9

case x

when 0
  puts "zero"
when 1, 2, 3, 4, 5
  puts "przedział 1-5"
when 6..9
  puts "od 6 do 9"
else
  puts "coś innnego"
end


message = case x
when 0
  "zero"
when 1, 2, 3, 4, 5
  "przedział 1-5"
when 6..9
  "od 6 do 9"
else
  "coś innnego"
end

puts message
