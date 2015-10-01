require 'stringio'

MAX = 10
MIN = 0

input =  File.open('input.txt', 'r')
output =  File.open('output.txt', 'w')

case_nbr = input.gets

case_nbr = case_nbr.to_i

case_nbr = 0 if case_nbr > MAX || case_nbr < MIN

puts "case number is : #{case_nbr}"

case_nbr.times do
	token = input.gets
	token.strip!
	result = ( token == token.reverse ) ? "funny" : "not funny" 
	output.puts result
end