load 'ar.rb'
# In the challenge_create.rb file:
# Create three new products using the three different ways to create new AR objects.
# Ensure that all three new products are persisted to the database, without validations errors.
# 				Create a Product object that is missing some required columns.
# 						Attempt to save this product and print all the AR errors which are generated.

#<Product id: 155,
# name: "Chai",
# description: "10 boxes x 30 bags",
# price: #<BigDecimal:9835c6c,'0.18E2',9(18)>,
# stock_quantity: 39,
# category_id: 1,
# created_at: "2011-11-18 04:48:44",
# updated_at: "2011-11-18 04:48:44">


# 1
# p = Product.new(:name => 'X001', :description =>'X001 desc', :price => 110.00, :stock_quantity =>6, :category_id =>1)
# p.save

# 2
# p = Product.new()
# p.name = "X002"
# p.description = "X002"
# p.price =120.00
# p.stock_quantity = 6
# p.category_id = 1
# p.save

# 3
# p = Product.create(:name => 'X003', :description =>'X003 desc', :price => 130.00, :stock_quantity =>6, :category_id =>1)


# selet_products = Product.where('name like "X%"')
# puts selet_products.inspect
# selet_products.each {|x| puts x.price}

# 4

puts Product.count
p = Product.create( :name => "X003", :description =>'X003 desc', :price => 130.00, :stock_quantity =>6, :category_id =>1)
puts p.errors.full_messages

p = Product.create( :description =>'X003 desc', :price => 130.00, :stock_quantity =>6, :category_id =>1)
puts p.errors.full_messages

puts Product.count


