class AddAddressLineTwoToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :address_line_two, :string
  end
end
