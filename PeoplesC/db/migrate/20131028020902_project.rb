class Project < ActiveRecord::Migration
  def change
	create_table :projects do |t|
      t.string :name
	  t.date :start
	  t.date :end
	  t.text :description
      t.references :admin, index: true
	  t.references :project, index: true
	  t.references :picture, index: true
	  t.references :video, index: true

      t.timestamps
    end
  end
end
