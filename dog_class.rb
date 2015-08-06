class Dog

	def set_name= (dog_name)
		@name = dog_name
	end

	def get_name
		return @name
	end

	def set_dog_type=(type_of_dog)
		@type = type_of_dog
	end

	def get_dog_type
		return @type
	end

	def bark
		return "Wooof Wooof"
	end
end

my_dog = Dog.new
my_dog.set_name = "Wiley"
my_dog.set_dog_type = "Boston Terrier"
my_dog_name = my_dog.get_name
my_dog_type = my_dog.get_dog_type

puts "My dog #{my_dog_name} the #{my_dog_type} says Hello... #{my_dog.bark}"