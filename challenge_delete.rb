# In the challenge_delete.rb file:
# 															 Find one of the products you created in challenge_create.rb and delete it from the database.

load 'ar.rb'

puts Product.count
p = Product.where('name = "X003"')

puts p.first.name
p.first.destroy


puts Product.count
