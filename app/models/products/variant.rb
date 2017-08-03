class Products::Variant < ApplicationRecord
  belongs_to  :product, foreign_key: :products_product_id
  has_many    :items, foreign_key: :products_variant_id, class_name: 'Documents::Item'
end
