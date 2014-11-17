class AddAuthorIdToPapers < ActiveRecord::Migration
  def change
    add_column :papers, :author_id, :integer
  end
end
