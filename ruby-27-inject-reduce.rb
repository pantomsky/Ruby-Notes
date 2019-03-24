["kot", "zebra", "pies", "kot", "zebra"].inject({}) do |acc, word|  #przekazujemy metodzie inject pusty Hash
  acc[word] ||= 0  # warunkowe przypisanie
  acc[word] += 1   
  acc
end
