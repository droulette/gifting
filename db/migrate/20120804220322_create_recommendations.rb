class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.references :user
      t.references :product

      t.timestamps
    end
    add_index :recommendations, :user_id
    add_index :recommendations, :product_id
  end
end
