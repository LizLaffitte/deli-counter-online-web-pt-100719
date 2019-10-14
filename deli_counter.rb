# Write your code here.
def line(katz_deli)
	the_line = "The line is currently"
	if katz_deli.length < 1
		the_line << " empty."
	else
		the_line << ":"
		katz_deli.each_with_index do |customer, index|
			position = index + 1
			the_line << " #{position}. #{customer}"
		end
	end
	puts the_line
end

def take_a_number(katz_deli, name)
	katz_deli << name
	position = (katz_deli.index(name)) + 1
	puts "Welcome, #{name}. You are number #{position} in line."
end

def now_serving(katz_deli)
	if katz_deli.length < 1
		puts "There is nobody waiting to be served!"
	else
		next_customer = katz_deli.shift
		now_serving = "Currently serving #{next_customer}."
		puts now_serving
	end
end