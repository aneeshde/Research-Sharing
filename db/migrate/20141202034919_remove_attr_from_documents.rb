class RemoveAttrFromDocuments < ActiveRecord::Migration
  def change
  	remove_column :documents, :name, :path
  end
end
