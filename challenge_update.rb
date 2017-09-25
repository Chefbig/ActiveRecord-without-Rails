# In the challenge_update.rb file:
# 															 Find all products with a stock quantity greater than 40.
# 		Add one to the stock quantity of each of these products and then save these changes to the database.

load 'ar.rb'

select_product = Product.where('stock_quantity > 40')

select_product.each do |x| puts x.name, x.stock_quantity end

select_product.each do |x|
  x.stock_quantity = x.stock_quantity + 1
  x.save
end

select_product.each do |x| puts x.name, x.stock_quantity end
