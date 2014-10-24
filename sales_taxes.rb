
# class Product
# 	attr_accessor :name
# 	attr_accessor :price
		
# 		def initialize
# 			@name = name
# 			@price = price
# 		end

# 		def import_tax
# 			(@price * 1.050)
# 		end
# end

# product1 = Product.new
# product1.name = "chocolate"
# product1.price = 10.00

# puts product1.import_tax 
# puts product1.name

# #----------------------------

# product2 = Product.new
# product2.name = "novel"
# product2.price = 15.00

# puts product2.import_tax 
# puts product2.name

# #----------------------------

# product3 = Product.new
# product3.name = "bacon"
# product3.price = 11.00

# puts product3.import_tax 
# puts product3.name

# #-------------------------------#
# #-------------------------------#


class Product

	attr_accessor :name, :cost, :product_type

	def initialize(name,cost,product_type)
		@name = name
		@cost = cost
		@product_type = product_type
		# @cost_withtax = cost *
	end

	def calculate_parameters
		
		if @product_type == "FOOD"
			sales_tax_exempt 
		elsif @product_type == "BOOKS"
			sales_tax_exempt
		elsif @product_type == "MEDICINE"
			sales_tax_exempt		
		elsif @product_type == "IMPORTED"
			import_tax	
		else
			cost_with_sales_tax = @cost *1.05
			puts "The cost with sales tax is $#{cost_with_sales_tax}."
		end
	end


	def sales_tax_exempt
		puts "The price without tax is $#{@cost}." 
	end

	def import_tax
		cost_with_import_tax = @cost *1.1
		puts "The cost with import tax is $#{cost_with_import_tax}."
	end

	def close_app
		puts "See ya!"
		exit
	end

end

product1 = Product.new("soap", 10, "IMPORTED")
puts product1.name
puts product1.cost
puts product1.product_type

product1.calculate_parameters

# product2 = Product.new("paper back", 12, )

