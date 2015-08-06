class Pets

	attr_accessor :name, :pet_type
	
end

class Dog < Pets

	def bark
		return "Wooof Wooof"
	end
end

class Cat < Pets

	def meow
		return "Meeooowwww"
	end
end

class Chicken < Pets

	def tweet
		return "bwak bwak bwak"
	end
end

my_dog = Dog.new
my_dog.name = "Wiley"
my_dog.pet_type = "Dog"
my_dog_name = my_dog.name
my_dog_type = my_dog.pet_type

my_cat = Cat.new
my_cat.name = "Prince"
my_cat.pet_type = "Cat"
my_cat_name = my_cat.name
my_cat_type = my_cat.pet_type

puts "My pet #{my_dog_name} the #{my_dog_type} says Hello... #{my_dog.bark}"