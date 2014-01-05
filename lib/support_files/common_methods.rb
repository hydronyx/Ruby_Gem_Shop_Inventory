module CommonMethods



	#This method reads and displays the all items available in the stock.
	def read_products_stock

		arr = IO.readlines("inventory.txt")
		len=0,i=0;
		len=arr.length

		while i != len  do

			temp = arr[i].split("^")
			
			puts "\n---------------------------------"
			puts "Product Id       :#{temp[0]}"
			puts "Product Name     :#{temp[1]}"
			puts "Product Price    :#{temp[2]}"
			puts "Product Quantity :#{temp[3]}"
			puts "Product Company  :#{temp[4]}"
			puts "---------------------------------"
			i +=1
		end
	end



	#  This methods searches for the product by id.
	def search_product_by_id(product_id)

		arr = IO.readlines("inventory.txt")
		len=0,i=0;
		len=arr.length

		while i != len  do

			temp = arr[i].split("^")

			if temp[0] == product_id
				puts "\n---------------------------------"
				puts "Product Id       :#{temp[0]}"
				puts "Product Name     :#{temp[1]}"
				puts "Product Price    :#{temp[2]}"
				puts "Product Quantity :#{temp[3]}"
				puts "Product Company  :#{temp[4]}"
				puts "---------------------------------"
			end

			i +=1
		end

	end




	#  This methods searches for the product by name.
	def search_product_by_name(product_name)

		print "\nThe search result by NAME is/are:"
		arr = IO.readlines("inventory.txt")
		len=0,i=0;
		len=arr.length

		while i != len  do
			temp = arr[i].split("^")

			if temp[1] == product_name
				puts "\n---------------------------------"
				puts "Product Id       :#{temp[0]}"
				puts "Product Name     :#{temp[1]}"
				puts "Product Price    :#{temp[2]}"
				puts "Product Quantity :#{temp[3]}"
				puts "Product Company  :#{temp[4]}"
				puts "---------------------------------"
			end
			i +=1
		end
	end


end