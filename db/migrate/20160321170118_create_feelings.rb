class CreateFeelings < ActiveRecord::Migration
  def change
    create_table :feelings do |t|
      t.string :type_of_feelings
      t.string :img_url
    end
  end
end
