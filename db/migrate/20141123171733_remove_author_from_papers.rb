class RemoveAuthorFromPapers < ActiveRecord::Migration
  def up
    remove_column :papers, :author
  end

  def down
    add_column :papers, :author, :string
  end
end
