class CreateCheerups < ActiveRecord::Migration
  def change
    create_table :cheerups do |t|
      t.string :feeling_name
      t.string :name
      t.string :img_url
      t.string :data_type
      t.integer :feeling_id, index: true, foreign_key: true
    end
  end
end
