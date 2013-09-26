class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :user_id
      t.string :integer

      t.timestamps
    end
  end
end
