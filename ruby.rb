#puts "You Gave #{ARGV} as args"

puts ARGF.to_s

class BookInStock

  attr_reader :isbn, :price
  attr_writer :price
	def initialize(isbn, price)
		@isbn = isbn
		@price = price
	end

end

nght = Night.new(nil, nil)

nght.goodNight('mohamed') { puts 'its time to bed..'}

n2 = Night.new('mohamed', 'mylogin')

puts n2.name
n2.name = 'Ahmed'

puts n2.name