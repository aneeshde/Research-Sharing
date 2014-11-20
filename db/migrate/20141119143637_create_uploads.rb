class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.references :paper

      t.timestamps
    end
    add_index :uploads, :paper_id
  end
end
