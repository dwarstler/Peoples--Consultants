class Donor < ActiveRecord::Base
  has_many :donations

  devise :validatable

  #ensures every field is entered
  validates :first_name, :presence => {message: "Please enter a first name."}
  validates :last_name, :presence => {message: "Please enter a last name."}
  validates :phone_number, :presence => {message: "Please enter a phone number."}
  validates :email, :presence => {message: "Please enter an email address."}

  #ensures every field has the correct length
  validates :first_name, :last_name, length: {in:1..30, message: "Name fields are limited to 30 characters."}
  validates :phone_number, length: {is: 10, message: "Please enter a valid phone number with an area code."}
  validates :email, length: {maximum: 50, message: "Your email address is too long."}  # an email address must be at least "A@B.C"
  validates :email, length: {minimum: 5, message: "Please enter a valid email address"}

  #ensures phone_number is a number
  validates :phone_number, :numericality => {only_integers: true, message: "Invalid phone number."}

  #ensures email addresses are entered in the correct format
  validates_format_of :email, :with => /@/, :message => "Please enter a valid email address."

end
