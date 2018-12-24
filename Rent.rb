vacant = true
base_price = 100

puts "Welcome to the shops. We have 1 unit available."
puts "The price is #{base_price} for free Roman citizens."
puts "Where are you from? >"
locality = $stdin.gets.chomp
if locality == "Germania" then base_price = base_price * 2.5
elsif locality == "Rome" then base_price = 100
else
  puts "You aren't from around here, are you?"
