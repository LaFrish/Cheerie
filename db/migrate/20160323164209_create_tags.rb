class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :feeling_id, index: true, foreign_key: true
      t.integer :cheerup_id, index: true, foreign_key: true
      t.integer :post_id, index: true, foreign_key: true
    end
  end
end
