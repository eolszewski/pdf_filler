class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_us_citizon, :boolean
    add_column :users, :is_item_a, :boolean
    add_column :users, :is_item_b, :boolean
    add_column :users, :is_item_c, :boolean
    add_column :users, :country, :string
    add_column :users, :combobox, :string
  end
end
