class CreateUserFaqs < ActiveRecord::Migration
  def change
    create_table :user_faqs do |t|
      t.text :Question
      t.references :paper

      t.timestamps
    end
    add_index :user_faqs, :paper_id
  end
end
