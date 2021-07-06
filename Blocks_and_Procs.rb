#Blcoks are not objects, but procs are

cube = proc {|x| x**3}

square = proc {|x| x**2}

def method_with_procs(p1, arg1, p2, arg2)
    puts p1.call(arg1)
    puts p2.call(arg2)
end

method_with_procs(cube, 2, square, 3)

#Using a proc as a block

p ((1..10).map(&square))

p((1..20).select(&:even?)) # thats iqual to {|x| x.even?}

#using a block as a proc

def takes_block(&block)
    block.call
end

takes_block {|x| puts "Hello World!"}