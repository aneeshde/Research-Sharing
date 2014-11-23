class AddPaperidToFaqs < ActiveRecord::Migration
  def change
    add_column :faqs, :paper_id, :integer
  end
end
