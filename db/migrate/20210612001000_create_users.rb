class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :avatar
      t.string :address
      t.string :twitter
      t.string :name
      t.string :dob
      t.boolean :admin

      t.timestamps
    end
  end
end
