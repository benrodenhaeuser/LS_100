require "pry"

class Die
  # the initialize method gets called automatically whenever a new Die instance is created
  def initialize
    roll
  end
  # rolling a die assigns a number from 1 to 6 to it
  def roll
    @number_showing = rand(1..6)
  end
  # what is the number the die is showing right now?
  def showing
    @number_showing
  end
  # trick the die into showing a particular number!
  def cheat( number )
    if number.between?(1,6)
      @number_showing = number
    else
      puts "You are not a very smart cheater."
    end
  end
end

# test
puts (1..6).to_a.to_s # just to check we have really defined a die above ...
puts
die = Die.new
puts die.showing
die.roll
puts die.showing
die.cheat(6)
puts die.showing
binding.pry
die.cheat(7)
puts die.showing
