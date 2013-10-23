class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :picture_file
      t.string :file_location
      t.integer :admin_id
      t.string :last_edited_by

      t.timestamps
    end
  end
end
