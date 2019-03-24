puts "Początek"

a = 2
b = 0

begin
  puts a/b
rescue => e
  puts "Błąd: #{e.class}"
end

# gdy chcemy tlyko obsłuzyć błąd dzielenia przez zero
begin
  puts a/b
rescue ZeroDivisionError
  puts "Błąd: nie dzielimy przez zero"
end



begin
  puts a/basdfadf
rescue => e
  puts "Błąd: #{e.class}"
end

# obsługa wielu błędów przez kaskadowe wywoałenie rescue
begin
  puts a/basdafgsadgrg
rescue ZeroDivisionError
  puts "Błąd: nie dzielimy przez zero"
rescue NameError
  puts "Błąd nazwy"
end
# zaleca siie obsługę konkretnych błedów / przewidzianych

counter = 0

begin
  puts a/b
rescue ZeroDivisionError
  counter += 1
  puts "Błąd: nie dzielimy przez zero"
  retry if counter < 3
else
  # wchodzimy tu gdy nie ma płedu
  puts "Nie wystπąpił żaden błąd"
ensure
  # wykonujemy zawsze
  puts "Wykonuje się zawsze"
end

# raise - wyrzucanie wyjątków

puts "Koniec"
