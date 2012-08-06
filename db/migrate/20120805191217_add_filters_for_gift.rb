class AddFiltersForGift < ActiveRecord::Migration
  def up
    add_column :reminders, :for_whom, :string
    add_column :reminders, :price_range, :string
    add_column :reminders, :gift_type, :string
    add_column :products, :perfect_for, :string
    add_column :products, :gift_type, :string
  end

  def down
    remove_column :reminders, :for_whom
    remove_column :reminders, :price_range
    remove_column :reminders, :gift_type
    remove_column :products, :perfect_for
    remove_column :products, :gift_type
  end
end
