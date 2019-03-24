require 'bigdecimal' #do obliczen na liczbach zmienno przecinkowych z duza dokładnościa
x = BigDecimal.new("1.0")
1000.times { x += BigDecimal.new("0.001")}
puts x.to_f
