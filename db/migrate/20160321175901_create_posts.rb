class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :feeling_name
      t.string :img_url
      t.string :title
      t.string :body
      t.string :data_type
      t.integer :feeling_id
    end
  end
end
