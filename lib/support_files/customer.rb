require 'fileutils'
require_relative 'product.rb'
require_relative 'common_methods.rb'

class CustomerDetails

	include CommonMethods

	def customers_view

		loop do
			print "\n Select the Operation to perform :"
			print "\n 1. list products	: " 
			print "\n 2. search product : " 
			print "\n 3. Buy product    : " 
			print "\n 7. To Exit to Menu"
			print "\n\n  Enter your choice :"
			operation_no = gets.strip.to_i
			print("\n")

			case operation_no

			when 1
				puts "\nDisplaying Product List: " 
				read_products_stock


			when 2
				print"Enter 1. To search Product by ID\n      2. To search Product by Name\n"
				print "Enter your choice : "
				option = gets.to_i
				puts"\n"
				loop do
					case option

					when 1  
						print "Enter the Product ID to search :"
						product_to_search = gets.strip
						search_product_by_id(product_to_search)
						break

					when 2
						print "Enter the Product NAME to search :"
						product_to_search = gets.strip
						search_product_by_name(product_to_search)
						break

					else
						puts "Wrong Operation"
						break  
					end   
				end

			when 7
				break


			else
				print "\n\n Invalid Operation "
				print "\n Enter your choice again:\n\n "
			end

		end
	end
end 
