class Products::Product < ApplicationRecord
  has_many  :variants, foreign_key: :products_product_id
end
