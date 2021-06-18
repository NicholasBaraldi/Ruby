my_info = {
    name: "Nicholas",
    age: "24",
    email: "nicholas@gmail.com",
    friends: ["Victor", "João", "Rafael"]
}

puts "I am #{my_info[:age]} years old"
puts "My best friend is #{my_info[:friends][0]}"

puts my_info

my_info.delete(:email)
puts my_info

my_info[:surename] = "Baraldi"
puts my_info