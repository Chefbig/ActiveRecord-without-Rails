class Product < ActiveRecord::Base
  # This AR object is linked with the products table.

  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.
  belongs_to :category
  validates :name, length: { minimum: 4 }, uniqueness: true
  validates :name, :description, :price, :stock_quantity, presence: true
  # <Product id: 155,
  # name: "Chai",
  # description: "10 boxes x 30 bags",
  # price: #<BigDecimal:9835c6c,'0.18E2',9(18)>,
  # stock_quantity: 39,
  # category_id: 1,
  # created_at: "2011-11-18 04:48:44",
  # updated_at: "2011-11-18 04:48:44">
end
