require 'fileutils'


class Product

	# Gets the details of the product from shopkeeper.
	def self.get_product_details

		print "    Enter the product ID  :"
		@product_id= gets.strip.to_i 
					#print product_code
					print "    Enter the product NAME  :"
					@product_name= gets.strip 
					#print product_name
					print "    Enter the product PRICE :"
					@product_price= gets.strip.to_i 
					#print product_price
					print "    Enter the product QUANTITY :"
					@product_quantity= gets.strip.to_i 
					#print product_quantity		
					print "    Enter the product COMPANY :"
					@product_company= gets.strip 
					#print product_quantity	
				end




	#This method writes  new items to the stock.
	def self.write_product(product_name,product_id,product_price,product_quantity,product_company)
		File.open("inventory.txt", "a") do |inventory_file|

			inventory_file.puts("#{@product_id}^#{@product_name}^#{@product_price}" +
				"^#{@product_quantity}^#{@product_company}")
			inventory_file.close
		end
	end



	#This method removes items in the stock
	def self.remove_product(product_id)
		array = IO.readlines("inventory.txt")
		len=0,i=0;
		len=array.length

		while i != len  do
			temp = array[i].split("^")
			#puts temp[0]

			File.open("tempfile.txt", "a") do |tempfile|	
				if product_id.to_i != temp[0].to_i
					tempfile.puts(array[i])
				end
			end

			i=i+1;
		end

		FileUtils.mv("tempfile.txt","inventory.txt")
		puts "\nItem removed."
	end


end

# Shows the details of the product to the shopkeeper
=begin

def show_product(product_name,product_id,product_price,product_quantity)
		puts "\n The product details are :"		
		puts "Product Code     : #{@product_id}"
		puts "Product Name     : #{@product_name}"
		puts "Product Price    : #{@product_price}"
		puts "Product Quantity : #{@product_quantity}"

end

=end
