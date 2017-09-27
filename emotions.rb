#hash = {emotions:level from 1 to 3}
emotions = {
  happy:[1,2,3],    #key1:value1  --> #key1:[x0,x1,x2]
  sad:[1,2,3],      #key2:value2  --> #key2:[x0,x1,x2]
  angry:[1,2,3]     #key3:value3  --> #key3:[x0,x1,x2]
}

class Person

  def initialize(name, emotions)
    @name     = name
    @emotions = emotions
  end

  def name
    @name
  end

  def feeling

    @emotions.each do |feeling,level|
      if level.sample == 3
        puts "I am feeling a high amount of #{feeling}."
      elsif level.sample == 2
        puts "I am feeling a medium amount of #{feeling}."
      else
        puts "I am feeling a low amount of #{feeling}."
      end
    end

  end

end

lan = Person.new("Lan",emotions)
# cindy = Person.new("sad",emotions)
# tom = Person.new("angry",emotions)
lan.feeling
