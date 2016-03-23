class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.string :img_url
      t.string :data_type
      t.string :tag
      t.references :feeling, index: true, foreign_key: true
      t.references :cheerup, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true
    end
  end
end
