class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :text_file
      t.string :file_location
      t.integer :admin_id
      t.string :last_edited_by

      t.timestamps
    end
  end
end
