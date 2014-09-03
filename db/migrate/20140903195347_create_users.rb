class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      
      t.string      :name
      t.date        :date_of_birth
      t.string      :address

      t.timestamps
    end
  end
end
