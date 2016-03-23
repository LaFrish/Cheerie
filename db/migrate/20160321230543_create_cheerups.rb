class CreateCheerups < ActiveRecord::Migration
  def change
    create_table :cheerups do |t|
      t.string :name
      t.string :img_url
      t.string :data_type
      t.string :tag
      t.references :feeling, index: true, foreign_key: true
    end
  end
end
