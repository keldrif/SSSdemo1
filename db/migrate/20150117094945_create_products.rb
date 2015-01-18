class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.decimal :cost
      t.integer :qty
      t.string :image
      t.string :brand

      t.timestamps
    end
  end
end
