class CreateBored < ActiveRecord::Migration
  def change
    create_table :boreds do |t|
      t.string :name
      t.string :img_url
      t.string :data_type
    end
  end
end
