# This is the base module for handling dice within the game interface. -Pre UI building.
# The system is meant to denote not only standard hit check, but also integrate critical strikes and critical fails

class Mainmenu
  # initiate console interface and selection.
  # this will eventually be replaces by a UI of sorts
  puts "Welcome to Dice Roller."
  puts "Please select the Die of your choice to roll."
  puts "1.) Six Sided"
  puts "2.) Eight Sided"
  puts "3.) Ten Sided"
  puts "4.) Twenty Sided\n\n"
  print "Dice:> "
  # Initiate user selection
  input = $stdin.gets.chomp
  if input == "1"
    puts "Rolling a Six-sided Die..."
    puts SIX_SIDED_DIE.roll
  elsif input == "2"
    puts "Rolling an Eight-sided Die."
    puts EIGHT_SIDED_DIE.roll
  elsif input == "3"
    puts "Rolling a Ten-sided Die"
    puts TEN_SIDED_DIE.roll
  elsif input == "4"
    puts "Rolling a Twenty-sided Die"
    puts TWENTY_SIDED_DIE.roll
    else
    puts "Please enter a valid number!"
  end
  # need to add quantity of dice via variable

end


# experimental crit modifier
class Crit
  puts "Critical Dice Placeholder loads successfully."
  critical_hit = "Foo"
end

class Rollmodifier
  puts "Roll Modifier"
end

class Selector
  @@die = {
    'six_sided' =
  }

# create the Dice class
class Dice < Crit
  def initialize(sided)
    @sided = sided
  end
# create the process to generate a random number and place it into the following variables to be manipulated.
  def activate_dice
    rand(@sided) + 1
  end
# establish a variable to modify the dice variables
  def roll(number = 1)
    roll_array = []
    number.times do
      roll_array <<
      activate_dice
    end
    dice_result = 0
    roll_array.each do |roll|
      new_dice_result = dice_result + roll
      dice_result = new_dice_result
    end
    dice_result
  end
end

# Establish variables to configure the sides of the die to be rolled.
# These will be called via $stdin until integration of the GOSU GUI
SIX_SIDED_DIE = Dice.new(6)
EIGHT_SIDED_DIE = Dice.new(8)
TEN_SIDED_DIE = Dice.new(10)
TWENTY_SIDED_DIE = Dice.new(20)
