class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :picture_file
      t.string :file_location
      t.integer :admin_id
      t.string :last_edited_by

      t.timestamps
    end
  end
end
