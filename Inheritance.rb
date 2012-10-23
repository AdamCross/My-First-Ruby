class Main
  def self.sayHello(people)
    for person in people
      p "Hello #{person.name}, you are #{person.age}, and #{person.gender}"
    end
  end
end

class Person
  attr_reader :name, :age, :gender
  # Could use attr_writer to make write-only, attr_accessor to make read/write
  def initialize(name, age, gender)
    @name=name
    @age = age
    @gender = gender
  end
  
end

class Man < Person
  def initialize(name, age)
    super(name, age, "Male")
  end
end  

class Woman < Person
  def initialize(name, age)
    super(name, age, "Female")
  end
end

people = [Man.new("Adam", 21), Woman.new("Eve", 20)]
Main.sayHello(people)