class AddI9FieldsToUsers < ActiveRecord::Migration
  def change
  	rename_column :users, :is_us_citizon, :us_citizen
  	rename_column :users, :country, :state
	remove_column :users, :us_citizon
	remove_column :users, :last_name
  	add_column  :users, :social_security, :string
  	add_column  :users, :zipcode, :string
  	add_column  :users, :email, :string
  	add_column  :users, :telephone, :string
  end
end
