class CreateGifs < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.string :name
      t.string :img_url
      t.string :data_type
      t.string :tag
      t.integer :feeling_id
    end
  end
end
