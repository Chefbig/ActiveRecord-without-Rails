load "ar.rb"

# Use the Product class to find (any) product from the database.
firstProducts = Product.first

# Inspect the Product object you have retrieved.
puts firstProducts.inspect

# In a comment within your product.rb file, record all the columns that exist in the products table.
#<Product id: 155,
# name: "Chai",
# description: "10 boxes x 30 bags",
# price: #<BigDecimal:9835c6c,'0.18E2',9(18)>,
# stock_quantity: 39,
# category_id: 1,
# created_at: "2011-11-18 04:48:44",
# updated_at: "2011-11-18 04:48:44">

# Based on the columns you find, can you determine if the products table has an association with any other tables? If so, what table?
# category_id indicates there is a relationship with category
cat = Category.first
puts cat.inspect

# Total number of products
total_products = Product.count
puts total_products

# The names of all products above $10 with names that begin with the letter C.
selet_products = Product.where('name LIKE "C%" and Price > 10')
selet_products.each {|x| puts x.price}

# Total number of products with a low stock quantity. (Low is defined as less than 5 in stock.)
prod_with_low_stock = Product.where('stock_quantity < 5')
puts prod_with_low_stock.count


# puts prod_with_low_stock.last.stock_quantity
# total = 0
# prod_with_low_stock.each do |x|
# 	total =total + x.stock_quantity
# end
# puts total

#Add a validation to this class such that a product must have all columns
# (other than foreign keys, the id, or datetime column)
# filled out before it can be saved to the db.
