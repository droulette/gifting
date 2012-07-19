class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :product_type
      t.decimal :price, :precision=>8, :scale=>2
      t.text :description
      t.references :product_rec

      t.timestamps
    end
    add_index :products, :product_rec_id
  end
end
