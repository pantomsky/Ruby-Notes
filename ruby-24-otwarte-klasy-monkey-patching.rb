class Integer
  def has_one_digit?
    self.to_s.chars.uniq.size ==1
  end
end

puts "Has one digit?"
t1 = 3311
puts t1
puts t1.has_one_digit?
puts
t2 = 11111111111111
puts t2
puts t2.has_one_digit?
