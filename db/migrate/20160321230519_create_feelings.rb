class CreateFeelings < ActiveRecord::Migration
  def change
    create_table :feelings do |t|
      t.string :name
      t.string :tag
    end
  end
end
