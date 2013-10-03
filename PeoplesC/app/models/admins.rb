class Admins < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :firstName, :lastName, :presence => true

  def fullname
    "#{self.firstName} #{self.lastName}"
  end

end

