class Documents::Item < ApplicationRecord
  belongs_to  :document, foreign_key: :documents_document_id
  belongs_to  :variant, foreign_key: :products_variant_id, class_name: 'Products::Variant'
end
