class Documents::Document < ApplicationRecord
  has_many  :items, foreign_key: :documents_document_id, dependent: :destroy
end
