class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.timestamp :date_created
      t.text :content
      t.integer :post_id

    end
  end
end
