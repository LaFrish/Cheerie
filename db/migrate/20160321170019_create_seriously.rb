class CreateSeriously < ActiveRecord::Migration
  def change
    create_table :seriouslies do |t|
      t.string :name
      t.string :img_url
      t.string :data_type
    end
  end
end
