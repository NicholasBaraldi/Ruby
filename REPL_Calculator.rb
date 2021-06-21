def calculator
    loop do #Same as while true do
        print "> "
        input = gets.chomp.downcase.split(" ")
        arg1 = input[0].to_f
        command = input[1]
        arg2 = input[2].to_f
        
        if input.any?{|i| i == "quit"}
            break
        end
            
        case command
        when "add", "plus", "sum", "+"
            puts arg1 + arg2
        when "subtract", "minus", "diference", "-"
            puts arg1 - arg2
        when "multiply", "times", "product", "*"
            puts arg1 * arg2
        when "divide", "/"
            puts arg1 / arg2
        else
            puts "I don't understand that."
        end
        puts
    end
    puts "Goodbye!"
end

calculator