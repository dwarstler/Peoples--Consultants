class Admin < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #ensures all fields are entered
  validates :admin_name, :email_address, :admin_password, presence: {message: "Field required."}

  #ensures certain admin_name and email_address are unique
  validates :admin_name, uniqueness: {case_sensitive: false, message: "Name already taken, please choose another."}
  validates :email_address, uniqueness: {case_sensitive: false, message: "Please use a different email address."}

  #ensures password is of the appropriate length
  validates :admin_password, length: {in: 8..30, message: "Passwords must contain 8-30 characters."}

  #ensures email address is of the appropriate format
  validates_format_of :email_address, :with => /@/, :message => "Invalid email address."

  #indicates association with pictures, videos, and texts
  has_many :pictures
  has_many :videos
  has_many :texts
  has_many :projects

  def fullname
    "#{self.firstName} #{self.lastName}"
  end

end


