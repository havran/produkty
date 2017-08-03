class CreateProductsProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products_products do |t|
      t.string :title

      t.timestamps
    end
  end
end
