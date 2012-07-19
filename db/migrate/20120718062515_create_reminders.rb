class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :name
      t.references :user
      t.datetime :ondate
      t.text :description

      t.timestamps
    end
    add_index :reminders, :user_id
  end
end
