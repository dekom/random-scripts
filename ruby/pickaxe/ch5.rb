# intro/hello1.rb

def say_goodnight(name)
	"Good night, #{name}"
end

puts say_goodnight('John-Boy')
puts say_goodnight('Mary-Ellen')

# intro/block_example.rb

def call_block
	puts 'start of method'
	yield
	yield
	puts 'end of method'
end

call_block { puts 'inside block' }

# intro/block_example2.rb

def who_says_what
	yield('Dave', 'hello')
	yield('Andy', 'goodbye')
end

who_says_what { |person, phrase| puts "#{person.upcase} says #{phrase.capitalize}" }
