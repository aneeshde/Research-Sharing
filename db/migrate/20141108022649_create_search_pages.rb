class CreateSearchPages < ActiveRecord::Migration
  def change
    create_table :search_pages do |t|
      t.string :author
      t.string :title
      t.date :publication_date
      t.date :SPARK_publication_date

      t.timestamps
    end
  end
end
