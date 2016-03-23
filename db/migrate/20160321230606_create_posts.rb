class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.string :img_url
      t.string :data_type
      t.string :tag
      t.integer :feeling_id, index: true, foreign_key: true
      t.integer :tag_id, index: true, foreign_key: true
    end
  end
end
