#Methods:

puts "My name is " + "SALOHCIn".swapcase.reverse.insert(8, "idlaraB ".reverse)

#Defining Methods:

def sum(x, y = 0, z = 0) #Optional arguments
    sum = x + y + z
    sum
end

def greet(greeting = "hey", name = "...you")
    puts "#{greeting} #{name}"
end

greet("hello", "Nic")
greet("hello")
greet()



#Typing conversion Methods (.to_i, .to_s, .to_f etc):

puts "My age is " + (20 + sum(2, 2)).to_s

# print "x = "
# x = gets.chomp

# puts "x + 5 = #{x.to_i + 5}"



#Methods with "!" change the original variable, so they are dangerous.
#Methods with "?" return Booleans, true and false.

puts "Nicholas".include?("N")
p " ".empty?