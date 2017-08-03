class Products::Product < ApplicationRecord
  has_many  :variants, foreign_key: :products_product_id, dependent: :destroy

  accepts_nested_attributes_for :variants, allow_destroy: true
end
