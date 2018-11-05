# Welcome to SkoomaQuest. A Game by Richard Grady.
#
# include CombatEngine.rb - Experimental - disabled for simplicity at this point...
#
prompt = "SQ:> "

# error handler
def error
  puts "This is not a valid selection."
  last_menu
end

# error handler last location via variable
def last_menu
  # how do i make this take a function as a variable? we will see....
#  current_room = bookmark - might not need this variable?
  bookmark
end

# game won
def winning
  "Congratulations! You have made it to safety!"
  exit(0)
end



# dead
def dead
  cause = random.new(1)
  if cause == 0
    puts "Death text 1"
    exit(0)
  elsif cause == 1
    puts "Death text 2"
    exit(0)
  else "Goodbye."
    exit(0)
  end
end


def main_menu
# bookmark = main_menu
  puts "Game Intro Text"
  puts "1.) New Game."
  puts "2.) Quit."
  # puts prompt
  print "\nSQ:> "

  choice = $stdin.gets.chomp
  if choice.include?("1")
    room1
  elsif choice.include?("2")
  endgame
else
  error
end
end
# room1
def room1
  puts "Room 1 Description"
  puts "1.) Choice 1"
  puts "2.) Choice 2"
  choice = $stdin.gets.chomp
  if choice.to_i == "1"
    room1
  elsif choice.to_i = "2"
  endgame
else
  error
end
end
# room2
def room2
  puts "Room 2 Description"
  puts "1.) Choice 1"
  puts "2.) Choice 2"
  choice = $stdin.gets.chomp
  if choice.to_i == "1"
    room3
  elsif choice.to_i = "2"
  endgame
else
  error
end
end
# room3
def room3
  puts "Room 3 Description"
  puts "1.) Choice 1"
  puts "2.) Choice 2"
  choice = $stdin.gets.chomp
  if choice.to_i == "1"
    room4
  elsif choice.to_i = "2"
  endgame
else
  error
end
end
# room4
def room4
  puts "Room 4 Description"
  puts "1.) Choice 1"
  puts "2.) Choice 2"
  choice = $stdin.gets.chomp
  if choice.to_i == "1"
    room5
  elsif choice.to_i = "2"
  endgame
else
  error
end
end
# room5
def room5
  puts "Room 5 Description"
  puts "1.) Choice 1"
  puts "2.) Choice 2"
  choice = $stdin.gets.chomp
  if choice.to_i == "1"
    room6
  elsif choice.to_i = "2"
  endgame
else
  error
end
end
# room6
def room6
  puts "Room 6 Description"
  puts "1.) Choice 1"
  puts "2.) Choice 2"
  choice = $stdin.gets.chomp
  if choice.to_i == "1"
    room7
  elsif choice.to_i = "2"
  endgame
else
  error
end
end
# room7
def room7
  puts "Room 7 Description"
  puts "1.) Choice 1"
  puts "2.) Choice 2"
  choice = $stdin.gets.chomp
  if choice.to_i == "1"
    room8
  elsif choice.to_i = "2"
  endgame
else
  error
end
end
# room8
def room8
  puts "Room 8 Description"
  puts "1.) Choice 1"
  puts "2.) Choice 2"
  choice = $stdin.gets.chomp
  if choice.to_i == "1"
    winning
  elsif choice.to_i = "2"
  endgame
else
  error
end
end
main_menu
