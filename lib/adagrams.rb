# require 'pry'
# wave 1
def stores_letters
  letters = [ "A", "A", "A", "A", "A", "A", "A", "A", "A", "B", "B", "C", "C", "D", "D", "D", "D", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "F", "F", "G", "G", "G", "H", "H", "I", "I", "I", "I", "I", "I", "I", "I", "I", "J", "K", "L", "L", "L", "L", "M", "M", "N", "N", "N", "N", "N", "N", "O", "O", "O", "O", "O", "O", "O", "O", "P", "P", "Q", "R", "R", "R", "R", "R", "R", "S", "S", "S", "S", "T", "T", "T", "T", "T", "T", "U", "U", "U", "U", "V", "V", "W", "W", "X", "Y", "Y", "Z" ]
end

def shuffle_letters
  letter = stores_letters.shuffle.pop(10)
  return letter.join(' , ')
end


def welcome
  puts "Welcome to adagrams. Here are your letters."
  shuffle_letters
end


puts welcome

def game_instructions
  puts "Based on these letters, give us a word."
  print "Word: "
end

def get_user_input
  user_input = gets.chomp
end

# wave 2
def uses_available_letters(get_user_input, shuffle_letters)
  user_input = get_user_input.upcase.split("")
  if user_input.include?(shuffle_letters) == true
  else
    puts "You entered in a word that contains characters not in the letter bank"
    game_instructions
    get_user_input
  end
end

puts uses_available_letters(user_input, shuffle_letters)

# binding.pry
# letters_in_hand = draw_letters
# input = user_input.slice(0..9)
# test = letters_in_hand.include?(user_input)
# return test
