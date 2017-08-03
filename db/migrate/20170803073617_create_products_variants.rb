class CreateProductsVariants < ActiveRecord::Migration[5.0]
  def change
    create_table :products_variants do |t|
      t.belongs_to :products_product, index: true
      t.text :title

      t.timestamps
    end
  end
end
