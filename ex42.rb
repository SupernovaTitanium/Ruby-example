## Animal is-a object look at the extra credit
class Animal
end

## dog is-a Animal
class Dog < Animal

  def initialize(name)
    ## dog has a name
    @name = name
  end
end

##  cat is a Animal
class Cat < Animal

  def initialize(name)
    ## cat has a name
    @name = name
  end
end

## Person is a class
class Person

  def initialize(name)
    ## ?? person has a name
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet    #getter/setter 
end

## ??Employee  is a kinf of person
class Employee < Person

  def initialize(name, salary)
    ## ?? hmm what is this strange magic?
    super(name)  ##call fARTHER'S SAME NAME FUNCTIONS  
    ## ??employee has a salary
    @salary = salary
  end

end

## ??
class Fish
end

## ??Salmon is a fish
class Salmon < Fish
end

## ??halibut is a fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## ??satan is a cat
satan = Cat.new("Satan")

## ?? mary is a person
mary = Person.new("Mary")

## ?? marry has a pet saten
mary.pet = satan

## ??  frank is a employee
frank = Employee.new("Frank", 120000)

## ??  frank ha a pet rover
frank.pet = rover

## flipper is a fish
flipper = Fish.new()

## crouse is a salmon
crouse = Salmon.new()

## harry is a halibut
harry = Halibut.new()