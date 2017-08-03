class CreateDocumentsDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents_documents do |t|
      t.text :title

      t.timestamps
    end
  end
end
