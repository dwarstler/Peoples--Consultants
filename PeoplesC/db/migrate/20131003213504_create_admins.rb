class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :admin_name
      t.string :email_address
      t.string :admin_password

      t.timestamps
    end
  end
end
