class AddNameBirthday < ActiveRecord::Migration
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthday, :datetime
    add_column :users, :about_me, :text
  end

  def down
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :birthday
    remove_column :users, :about_me
end
