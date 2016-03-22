class CreateFeelings < ActiveRecord::Migration
  def change
    create_table :feelings do |t|
      t.string :name
    end
  end
end
