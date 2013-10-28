class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.float :amount
      t.integer :donor_id

      t.timestamps
    end
  end
end
