# SkoomaQuest. Ver 1 - By Richard Grady
# Join the Khajiit on a mission to get a fix!

def menu
  


# Player attributes
sta = 25
int = 25
str = 25
level = 1
hps = level * sta / 2
mana = level * int / 2

# system
prompt = "SQ:> "


# Game intro
puts "Welcome to SkoomaQuest!\n\n"
puts "You open your eyes and find yourself in a jail cell."
puts "yada yada... more lore here...\n\n"

puts "What is your name?"

print prompt
name = $stdin.gets.chomp

print "Hello, #{name}\n"
puts "You can call me your inner-voice, a narrator you could say.\n"
puts "I will guide you on your mission to get what you need."
puts "You can ask me a number of commands, for example..."
puts "help, .....etc"

command = $stdin.gets.chomp
if command == 'help'
  print "This is the help screen." # I wonder, can I make an if call a custom function i define?
elsif command == 'cats'
    print "Mrrow."
else
  print "That is not a valid command, sire."
end
