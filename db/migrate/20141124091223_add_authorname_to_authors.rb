class AddAuthornameToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :authorname, :string
  end
end
