#each method:
one_to_ten = (1..10)

squares = []

one_to_ten.each{|n| squares << n**2}

puts one_to_ten
p squares



#map method:

cubes = one_to_ten.map{|n| n**3}

p cubes



#select and reject methods:

numbers = [41,56,874,197,47,68,155,4863]

p numbers.map{|n| n.odd?}

p odds = numbers.select{|n| n.odd?}
p evens = numbers.select{|n| n.even?} #Also could be written like: evens = numbers.reject{|n| n.odd?}.



#reduce/inject method (two names for the same thing):

costs = [16.30, 45.85, 98.74, 10, 46.99]


#One way to do it:

p (costs.reduce do |total, value|
    total + value
end)


#Another way to do it:

p costs.inject(:+) #summing up all numbers. ':*, :**, :/ etc' all this works as well.



#Exemple:

earnigns = 20_000 #20_000 is equal to 20000, just easier to read.

expenses = [1456, 784, 36.48, 148.98]

profit = expenses.reduce(earnigns, :-)

p profit



#All this methods works with Hashes as well and has two more, 'each_key' and 'each_value'.



#Integers iterators:

1.upto(10){|x| puts x if x.even?}

5.times{puts "hi"}