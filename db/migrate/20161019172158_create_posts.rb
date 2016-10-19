class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.timestamp :created_at

      t.text :content
    end
  end
end
