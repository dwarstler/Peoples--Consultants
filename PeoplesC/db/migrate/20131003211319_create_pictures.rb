class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :image
      t.integer :admin_id
      t.string :last_edited_by

      t.timestamps
    end
  end
end
