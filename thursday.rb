require 'pry'

class User_Login
	attr_reader :user, :password, :logged
	def initialize(user, password)
		@users = {:user => "lee", :password => "1234"}
		@user = user
		@password = password
		@logged = logged
		validate
	end

	def validate
		if @user == @users[:user] && @password == @users[:password]
			@logged = true
		end
	end

end

class Word_Count
	def initialize(user)
		@user = user
		count
	end
	def count
		if @user.logged
			puts "please enter some text"
			text= gets.chomp
			puts "The length of your text is #{text.length} characters."
		end
	end
end




puts "Username please"
user = gets.chomp

puts "password please"
password = gets.chomp

users = {:user => user, :password => password}


user1 = User_Login.new(users[:user], users[:password])

Word_Count.new(user1)

