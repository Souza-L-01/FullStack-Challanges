# require_relative 'black_jack'

# # def state_of_the_game(player_score, bank_score)
# #   # TODO: return (not print!) a message containing the player's score and bank's score
# # end

# # # def end_game_message(player_score, bank_score)
# # #   # TODO: return (not print!) a message telling if the user won or lost.
# # # end

# # # def state_of_the_game(player_score, bank_score)
# # #   "Your score is #{player_score}, bank is #{bank_score}"
# # # end

# def state_of_the_game(player_score, bank_score)
#   "Your score is #{player_score}, bank is #{bank_score}"
# end

# def end_game_message(player_score, bank_score)
#   if player_score > 21
#     "You lose!"
#   elsif player_score == 21
#     "Blackjack!"
#   elsif player_score > bank_score || bank_score > 21
#     "You win!"
#   elsif player_score < bank_score
#     "You lose!"
#   else
#     "Push!"
#   end
# end

# croupier.rb

def state_of_the_game(player_score, bank_score)
  "Your score is #{player_score}, bank is #{bank_score}"
end

def end_game_message(player_score, bank_score)
  if player_score > 21
    "You lose. You went over 21 points."
  elsif player_score == 21
    "Black Jack! You win!"
  elsif player_score > bank_score
    "You win with #{player_score} points against #{bank_score} points."
  elsif player_score < bank_score
    "You lose with #{player_score} points against #{bank_score} points."
  else
    "It's a push! You get your money back."
  end
end
