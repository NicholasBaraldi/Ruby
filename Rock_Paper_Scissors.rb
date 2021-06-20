player_move = ["rock", "paper", "scissors"].sample
computer_move = ["rock", "paper", "scissors"].sample

win_scenarios = [
    ["rock", "scissors"],
    ["paper", "rock"],
    ["scissors", "paper"]
]

lose_scenarios = [
    ["rock", "paper"],
    ["paper", "scissors"],
    ["scissors", "rock"]
]

puts(
if player_move == computer_move
    "It's a tie!"
elsif win_scenarios.include?([player_move, computer_move])
    "You Win!"
elsif lose_scenarios.include?([player_move, computer_move])
    "You Lose!"
else
    "Unexpected input"
end)