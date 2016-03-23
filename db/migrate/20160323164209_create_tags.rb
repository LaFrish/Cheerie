class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.references :feeling, index: true, foreign_key: true
      t.references :cheerup, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true
    end
  end
end
