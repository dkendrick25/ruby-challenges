def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end

def personalized_greeting
	puts "Hello, What is your name?"
	name = user_input.gets
end
 
def greeting(name)
	current_hour = determine_current_hour
	name = personalized_gretting
	
	if(current_hour > 3 && current_hour < 12)
		time = "morning"
	elsif(current_hour > 12 && current_hour < 18)
		time = "afternoon"
	elsif(current_hour > 18 || current_hour < 2)
		time = "evening"
	end
	puts "Good #{time}, #{name.capitalize}!"
end
greeting(name)