# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    def initialize(name)
        @name = name
        @color = "silver"
    end
    def say
        return "*~* #{@name} *~*"
    end
end

pudden = Unicorn.new("Pudden")
 p pudden.say

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    def initialize(name, pet = "bat")
        @name = name 
        @pet = pet
        @thirsty = true
    end
    def drink
        @thirsty = false
        p @thirsty
    end
end

drac = Vampire.new("drac", "cow")
    p drac
    drac.drink

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
        @meals = 0
    end
    
    def eat
        if @meals >= 4
            @is_hungry = false
            p @is_hungry
        else
            @meals =  @meals + 1
            p @meals
        end
    end
end

drake = Dragon.new("Drake", "Pal", "green")
p drake
drake.eat
drake.eat
drake.eat
drake.eat
drake.eat


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    def initialize(name, dynamic_dispodition, age = 0)
        @name = name
        @dynamic_dispodition = dynamic_dispodition
        @age = age
        @is_adult = (age >= 33 ? true : false)
        @is_old = (age >= 101 ? true : false)
        @has_ring = (name == "Frodo" ? true : false)
    end

    def celebrate_birthday
        p @age.next
    end

    def is_old

    end

    def has_ring

    end
end    


pippin = Hobbit.new("Pippin","cool dude", 33)

tom = Hobbit.new("Tom","cool dude", 120)

frode = Hobbit.new("Frodo","cool dude", 20)

p pippin.celebrate_birthday

p tom

p frode