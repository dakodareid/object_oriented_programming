
class Product
	attr_accessor :name
	attr_accessor :price
		
		def initialize
			@name = name
			@price = price
		end

		def import_tax
			(@price * 1.050)
		end
end

product1 = Product.new
product1.name = "chocolate"
product1.price = 10.00

puts product1.import_tax 
puts product1.name

#----------------------------

product2 = Product.new
product2.name = "novel"
product2.price = 15.00

puts product2.import_tax 
puts product2.name

#----------------------------

product3 = Product.new
product3.name = "bacon"
product3.price = 11.00

puts product3.import_tax 
puts product3.name
