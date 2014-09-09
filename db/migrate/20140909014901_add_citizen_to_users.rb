class AddCitizenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :us_citizon, :string
  end
end
