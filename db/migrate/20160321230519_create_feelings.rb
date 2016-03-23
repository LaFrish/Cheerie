class CreateFeelings < ActiveRecord::Migration
  def change
    create_table :feelings do |t|
      t.string :name
      t.string :tag
      t.integer :tag_id, index: true, foreign_key: true
    end
  end
end
