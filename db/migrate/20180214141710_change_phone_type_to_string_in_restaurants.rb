class ChangePhoneTypeToStringInRestaurants < ActiveRecord::Migration[5.1]
  def change
    change_column :restaurants, :phone, :string
  end
end
