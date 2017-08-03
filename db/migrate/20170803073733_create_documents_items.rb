class CreateDocumentsItems < ActiveRecord::Migration[5.0]
  def change
    create_table :documents_items do |t|
      t.belongs_to :documents_document, index: true
      t.belongs_to :products_variant, index: true
      t.text :title

      t.timestamps
    end
  end
end
