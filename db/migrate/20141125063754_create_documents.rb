class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.string :path
      t.integer :paper_id

      t.timestamps
    end
  end
end
