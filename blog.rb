#Challenge: to create a simple "blog" using ruby skills learned thus far

class Blog
#puts all posts in an array and counts them
	@@all_blog_posts = []
	@@blog_post_count = 0

	def self.all
		@@all_blog_posts
	end

	def self.add(stuff)
		@@all_blog_posts << stuff
		@@blog_post_count += 1
	end

	def self.publish
		@@all_blog_posts.each do |post|
			puts "Title: #{post.title}"
			puts "Content: #{post.content}"
			puts "Author: #{post.author}"
			puts "Date Published: #{post.publish_date}"
		end
	end
end

class BlogPost < Blog

	def self.create
		post = new
		print "Do you want to creat a new post? (Y/N)"
		input =gets.chomp.downcase
			if (input == "y")
				puts "What will the Title be?"
				post.title = gets.chomp
				puts "Write your content:"
				post.content = gets.chomp
				puts "Who is the author?"
				post.author = gets.chomp
				post.publish_date = Time.now
				post.save
			else
				print "ok maybe next time"
			end
	end

#setter
	def title
		@title
	end
#getter
	def title=(title)
		@title = title
	end

	def content
		@content
	end

	def content=(content)
		@content = content
	end

	def author
		@author
	end

	def author=(name)
		@author = name
	end

	def publish_date
		@publish_date
	end

	def publish_date=(date)
		@publish_date = publish_date
	end

	def save
		BlogPost.add(self)
	end
end

BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish
