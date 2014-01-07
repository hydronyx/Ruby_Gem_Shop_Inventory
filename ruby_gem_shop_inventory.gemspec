
Gem::Specification.new do |s|
  s.name        = 'ruby_gem_shop_inventory'
  s.version     = '0.0.1'
  s.executables << 'ruby_gem_shop_inventory'
  s.date        = '2014-01-05'
  s.summary     = "Simple Console Based Shop Inventory Management in Ruby."
  s.description = "A Inventory Management System for a small shop with features like add,search,remove,etc."
  s.authors     = ["Suyog Nerkar"]
  s.email       = 'suyog.nerkar@weboniselab.com'
  s.homepage    ='https://github.com/suyog-nerkar-webonise/ruby_assignment_shop_inventory'
  s.files       = [ 
                    'lib/ruby_gem_shop_inventory.rb',
                    'lib/support_files/inventory.txt',
                    'lib/support_files/common_methods.rb',
                    'lib/support_files/customer.rb',
                    'lib/support_files/product.rb',
                    'lib/support_files/shopkeeper.rb'
                  ]
  s.license     = 'MIT'
end

