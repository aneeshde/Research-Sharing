class FixType < ActiveRecord::Migration
  def change
    rename_column :faqs, :type, :type1
  end

end
