load "ar.rb"
# Add to the challenge_read.rb file:

# 	Find the name of the category associated with one of the products you have found using
# the has_many/belongs_to association defined in the two models.

p = Product.first
puts p.category.name

# 	Find a specific category and use it to build and persist a new product associated with
# this category. Ensure that this new product was properly saved to the database and
# that it's category_id property was properly set.
category_id = Category.where("name='Beverages'").first.id

# p = Product.create(:name => 'New Product', :description =>'New Product', :price => 150.00, :stock_quantity =>6, :category_id =>category_id)
# puts Product.last.name

# 	Find a specific category and then use it to locate all the the associated products
# over a certain price. Print out these products.

high_price_beverages = Product.where('category_id = ' + (category_id).to_s  + " and price > 5")

puts "%-30s %9s %15s" % ['Name' ,'Price', 'Stock_quantity']
high_price_beverages.each do
		|x| puts "%-30s %9.2f %9d" % [x.name ,x.price, x.stock_quantity]
end
