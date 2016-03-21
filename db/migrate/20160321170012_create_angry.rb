class CreateAngry < ActiveRecord::Migration
  def change
    create_table :angries do |t|
      t.string :name
      t.string :img_url
      t.string :data_type
    end
  end
end
