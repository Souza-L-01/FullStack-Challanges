require_relative "croupier"

player_score = 0
bank_score = pick_bank_score
running = true

loop do
  puts "Card? 'y' to get a new card"
  answer = gets.chomp.downcase

  if answer == "y"
    player_score += pick_player_card
    puts state_of_the_game(player_score, bank_score)
    running = player_score < 21
  elsif player_score > 21
    running = false
    puts end_game_message(player_score, bank_score)
  else
    break
  end
end
