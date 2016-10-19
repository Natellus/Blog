class CreatePosts < ActiveRecord::Migration
  def change
    create_table :post do |t|
      t.date :date_created
      t.text :content
    end
  end
end
