module HelperMethods
  def info
    print "I'm using the helper method."
  end
end

class Person
  include HelperMethods
  def initialize(name)
    @name = name
  end
end

me = Person.new("Kaia")
me.info # DOES WORK - include turns the info method into an instance method
Person.info # DOES NOT WORK

class Animal
  extend HelperMethods
  def initialize(name)
    @name = name
  end
end

cat = Animal.new("Luna")
cat.info # DOES NOT WORK; NoMethodError
Animal.info # DOES WORK - extend turns the info method into a class method
