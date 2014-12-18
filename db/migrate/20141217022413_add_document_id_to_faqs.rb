class AddDocumentIdToFaqs < ActiveRecord::Migration
  def change
  	add_column :faqs, :document_id, :integer
  end
end
