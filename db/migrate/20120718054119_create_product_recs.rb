class CreateProductRecs < ActiveRecord::Migration
  def change
    create_table :product_recs do |t|
      t.references :user
      t.references :product

      t.timestamps
    end
    add_index :product_recs, :user_id
    add_index :product_recs, :product_id
  end
end
