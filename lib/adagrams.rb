# require 'pry'
# wave 1
def stores_letters
  letters = [ "A", "A", "A", "A", "A", "A", "A", "A", "A", "B", "B", "C", "C", "D", "D", "D", "D", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "F", "F", "G", "G", "G", "H", "H", "I", "I", "I", "I", "I", "I", "I", "I", "I", "J", "K", "L", "L", "L", "L", "M", "M", "N", "N", "N", "N", "N", "N", "O", "O", "O", "O", "O", "O", "O", "O", "P", "P", "Q", "R", "R", "R", "R", "R", "R", "S", "S", "S", "S", "T", "T", "T", "T", "T", "T", "U", "U", "U", "U", "V", "V", "W", "W", "X", "Y", "Y", "Z" ]
end

def draw_letters
  letter = stores_letters.shuffle.pop(10)
  return letter
end

def welcome
  puts "Welcome to adagrams. Here are your letters."
  draw_letters
end


<<<<<<< HEAD
puts welcome
# binding.pry

=======
>>>>>>> 6cd1df6ab0a2f26a4ffd1009742f6ea5f0397af2
def game_instructions
  puts "Based on these letters, give us a word."
  print "Word: "
end

# def get_user_input
#   user_input = gets.chomp
#   return user_input
# end

# wave 2
def uses_available_letters?(input, letters_in_hand)
  input = input.upcase.split("")
  input.each do |letter|
    if letters_in_hand.include?(letter)
      letters_in_hand.delete(letter)
    else
      return false
    end
  end
  return true
end

<<<<<<< HEAD
# puts uses_available_letters(get_user_input, shuffle_letters)



# binding.pry
# letters_in_hand = draw_letters
# input = user_input.slice(0..9)
# test = letters_in_hand.include?(user_input)
# return test
=======
# wave 3
def score_word(word)
  score = 0

  score_hash = {
    "A" => 1,
    "E" => 1,
    "I" => 1,
    "D" => 2,
    "G" => 2,
    "O" => 1,
    "W" => 4,
    "H" => 4,
    "M" => 3,
    "S" => 1,
    "Y" => 4,
    "X" => 8
  }

  word = word.upcase.split("")
  word.each do |letter|
    score += score_hash[letter]
  end
  bonus_length = [7, 8, 9, 10]
  if bonus_length.include?(word.length)
    score += 8
  end
  return score 
end
>>>>>>> 6cd1df6ab0a2f26a4ffd1009742f6ea5f0397af2
