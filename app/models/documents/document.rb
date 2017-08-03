class Documents::Document < ApplicationRecord
  has_many  :items, foreign_key: :documents_document_id, dependent: :destroy

  accepts_nested_attributes_for :items, allow_destroy: true
end
