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
  shuffle_letters
end


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

# wave 3
def score_word(word)
  score = 0

  score_hash = {
    "A" => 1,
    "E" => 1,
    "I" => 1,
    "O" => 1,
    "U" => 1,
    "L" => 1,
    "N" => 1,
    "R" => 1,
    "S" => 1,
    "T" => 1,
    "D" => 2,
    "G" => 2,
    "B" => 3,
    "C" => 3,
    "M" => 3,
    "P" => 3,
    "F" => 4,
    "H" => 4,
    "V" => 4,
    "W" => 4,
    "Y" => 4,
    "K" => 5,
    "J" => 8,
    "X" => 8,
    "Q" => 10,
    "Z" => 10
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

#
# # wave 4
def highest_score_from(words)

  winning_word_and_score = {
    word: "",
    score: 0
  }

  words.each do |word|
    score = score_word(word)
    if score > winning_word_and_score[:score]
      winning_word_and_score[:score] = score
      winning_word_and_score[:word] = word
    # elsif score == winning_word_and_score[:score]
    #   if winning_word_and_score[:word].length == 10
    #     winning_word_and_score[:word]
    #
    end
  end



  return winning_word_and_score
end







#   best_word = nil
#   max_score = 0
#   max_word = ""
#   max_scores = []
#
#
# binding.pry
#   words.each do |word|
#
    # if word[:score] > max_score
    #   max_score = word[:score]
    #   max_word = word[:word]
    #   best_word << {word: max_word, score: max_score}
    # end
#     return
#
#   end



# binding.pry
  #
  # word_and_score.each do |highest_score|
  #   if highest_score[:score] == max_score
  #     best_word = highest_score[:word]
  #     max_scores << {word: best_word, score: max_score}
  #   end
  # end
# binding.pry
# puts highest_score_from

# best_words = highest_score_from
#
#
# highest_score = 0
# score_word.each do |score|
#
#
# return hash
