class AddDocumentsToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :document, :string
  end
end
