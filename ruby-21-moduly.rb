require 'date'

module  Romance
  class Date

  end
end

module Calendar
  class Date
  end

  class Event
    def test
      puts Date # wywołujemy klase Date z modułu Calendar
      puts ::Date # odwołujemy się do klasy Date jezyka Ruby
      puts Romance::Date # wywołujemy klase Date z modułu Romance
      puts ::Romance::Date # -||-  inny zapis
      puts Fruits::Date # wywołujemy klase Date z modułu Fruits 
    end
  end
end

module Fruits
  class Date
  end
end

Calendar::Event.new.test
