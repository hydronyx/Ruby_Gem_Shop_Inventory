require 'fileutils'

require_relative 'product.rb'
require_relative 'common_methods.rb'

class ShopkeeperDetails

  include CommonMethods

  def shopkeepers_view

    loop do
      print "\n=========================================="
      print "\n Select the Operation to perform \n"
      print "\n   1. Display current stock : " 
      print "\n   2. Add an item           : " 
      print "\n   3. Modify the stock      : " 
      print "\n   4. Delete an item        : "
      print "\n   5. Search Product        : "
      print "\n   6. Display product report: "
      print "\n   7. To Exit to Menu\n"
      print "\n========================================== \n" 
      print "\n\n  Enter your choice :"
      operation_no = gets.to_i
      print("\n")


      case operation_no

      when 1
        puts "\nDisplaying current stock : " 
          read_products_stock  
        when 2 
          puts " Add New Items to stock : \n"
          Product.get_product_details
          Product.write_product(@product_id,@product_name,@product_price,@product_quantity,@product_company)

        when 4
          print "Enter the product ID to remove : "
          Product.remove_product(gets.strip)

        when 5
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




