class AddTypeToFaqs < ActiveRecord::Migration
  def change
    add_column :faqs, :type, :integer
  end
end
