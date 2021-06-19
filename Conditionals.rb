#Case statement:

puts "You enter a room with 3 doors, which one do you go?"
puts "<Enter 1, 2 or 3>"

door_number = gets.chomp.strip.downcase

case door_number
when "1", "one"
    puts "You died"
when "2", "two"
    puts "You found gold"
when "3", "three"
    puts "You found nothing"
else
    puts "You were supposed to pick 1, 2 or 3."
end



#One-line if statement:

car = "fixed"

puts "I'll go pick my car" if car == "fixed"



#Ternary expression:

def bigger(x, y)
   puts x > y ? x : y
end

bigger(5, 2)
bigger(3, 9)


def who_wins(player_score, computer_score)
    puts "you #{player_score > computer_score ? "Win" : "Lose"}"
end

who_wins(34, 48)
who_wins(52, 17)