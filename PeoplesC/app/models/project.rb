class Project < ActiveRecord::Base

  #indicates association with pictures, videos, and texts
  has_many :pictures
  has_many :videos
  has_many :texts

  #indicates association with admins
  belongs_to :admin

  #ensures that the name is unique
  validates :name, uniqueness: { case_sensitive: false }

  #ensures the name is a decent length
  validates :name, length: {in: 4..30, message: "Project names must be a minimum of 4 characters and can be up to 30 characters."}

  #ensures the admin_id is an integer
  validates :admin_id, numericality: {only_integer: true}

end
