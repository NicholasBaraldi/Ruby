# local_variable = I'm local
# @instance_variable = I belong to an instance
# @@class_variable = I belong to the class

class Vehicle

    @@wheels = 4

    def self.info
        print "I'm a Vehicle"
    end
end

class Car < Vehicle; end # Car inherite from Vehicle

class Car

    #attr_reader :name => These let me read this variable
    #attr_writer :name => These let me write/rewrite this variable
    #attr_accessor :name => These let me do both, read and write.

    # None of those 'attr' are recommended.

    def initialize(name, brand = "...car")
        @name = name
        @brand = brand
    end

    def info #this is a instance method.
        puts "#{@name} is a #{@brand} and have #{@@wheels} wheels"
    end

    def self.info #this is a class method.
        super
        puts ", more specific a Car"
    end
end

my_car = Car.new("Black", "Ford Mustang")

my_car.info

Car.info