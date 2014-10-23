
class Product
	attr_accessor :name
	attr_accessor :price
		
		def initialize
			@name = name
			@price = price
		end

		def tax
			(@price * 1.050)
		end

		
end



product1 = Product.new
product1.name = "chocolate"
product1.price = 10.00

puts product1.tax 
puts product1.name



