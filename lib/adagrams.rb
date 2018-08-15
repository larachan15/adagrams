require 'pry'
def draw_letters()
  letters = [ "A", "A", "A", "A", "A", "A", "A", "A", "A", "B", "B", "C", "C", "D", "D", "D", "D", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "F", "F", "G", "G", "G", "H", "H", "I", "I", "I", "I", "I", "I", "I", "I", "I", "J", "K", "L", "L", "L", "L", "M", "M", "N", "N", "N", "N", "N", "N", "O", "O", "O", "O", "O", "O", "O", "O", "P", "P", "Q", "R", "R", "R", "R", "R", "R", "S", "S", "S", "S", "T", "T", "T", "T", "T", "T", "U", "U", "U", "U", "V", "V", "W", "W", "X", "Y", "Y", "Z" ]

  letter = letters.shuffle.pop(10)

  return letter
end

def welcome
  puts "Welcome to adagrams. Here are your letters."
  puts draw_letters.join(' , ')
end

puts welcome
  puts "Based on these letters, give us a word."
  print "Word: "
  user_input = gets.chomp


def uses_available_letters(user_input, draw_letters)
  letters = user_input.chars.to_a
  if letters.include?(welcome) == true
    puts "yay"
  end
  binding.pry
  # letters_in_hand = draw_letters
  # input = user_input.slice(0..9)
  # test = letters_in_hand.include?(user_input)
  # return test
end


# puts uses_available_letters(user_input, draw_letters)
