points = 0
room_point_vals = [5, 10, 15]

puts "Welcome to the Adventure Game!"
puts "You have 0 points."

user_input = ''
until user_input == 'exit'
  puts "Choose a room (1-3) to enter or 'exit' to end the game: "
  user_input = gets.chomp
  unless user_input == 'exit'
    puts "You entered Room #{user_input} and earned #{room_point_vals[user_input.to_i + 1]} points.\n"
  end
end
