class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :name
      t.string :img_url
      t.string :data_type
      t.string :tag
      t.integer :feeling_id, index: true, foreign_key: true
      t.integer :cheerup_id, index: true, foreign_key: true
      t.integer :post_id, index: true, foreign_key: true
      t.integer :tag_id, index: true, foreign_key: true
    end
  end
end
