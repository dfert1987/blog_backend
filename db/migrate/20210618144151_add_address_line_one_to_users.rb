class AddAddressLineOneToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :address_line_1, :string
  end
end
