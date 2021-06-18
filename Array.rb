my_array = ["First", "second", "third", "fourth"]

p my_array[3]
p my_array.index("third")
p my_array[1, 3]
p my_array.last
p my_array.length
p my_array[-3]



#Adding at the end of an Array

my_array.push("fifth")
#or 
my_array << "sixth"
p my_array

#Removing the last item

my_array.pop
p my_array

#Removing the first item

my_array.shift
p my_array

#Adding at the beggining

my_array.unshift("first")
p my_array

#Removing by index ou value

my_array.delete_at(4)
#or
my_array.delete("third") #if it has repeated values all will be deleted
p my_array

#Adding by index

my_array.insert(2, "third")
p my_array



another_array = ["fifth", "sixth", "seventh"]

#Ways of combine arrays

p my_array + another_array #Do not change de original arrays

my_array << another_array #This way there's an array inside another and you change the original one
p my_array

my_array.delete(another_array)

my_array.concat(another_array) #This way you insert the items of one array on another and you change the original one
p my_array