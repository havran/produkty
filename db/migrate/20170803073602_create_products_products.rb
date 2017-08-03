class CreateProductsProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products_products do |t|
      t.text :title

      t.timestamps
    end
  end
end
