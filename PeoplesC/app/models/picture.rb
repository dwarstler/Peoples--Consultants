class Picture < ActiveRecord::Base

  mount_uploader :image, ImageUploader
  attr_accessible :image

  belongs_to :admin
  belongs_to :project

  validates :admin_id, presence: true

  #ensures that nobody creates a file with a non-empty last_edited_by field
  #validates :last_edited_by, absence: {on: :create}

  #ensures that the last_edited_by field is updated on update
  #validates :last_edited_by, presence: {on: :update}

  #ensures the admin and project ids are integers
  validates :project_id, numericality: {only_integer: true}
  validates :admin_id, numericality: {only_integer: true}



  #validates :url, :presence => true#, :format {:with => //}#TODO Jeff, I'd like a REGEX here to determine if this is a valid URL. Let's figure out how to do that
  #mount_uploader :image, ImageUploader
end
