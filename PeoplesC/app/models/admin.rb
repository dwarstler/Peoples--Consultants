class Admin < ActiveRecord::Base
  #devise :database_authenticatable, :registerable,
         #:recoverable, :rememberable, :trackable, :validatable

  #validates :firstName, :lastName, :presence => true

  #indicates association with pictures, videos, and texts
  has_many :pictures
  has_many :videos
  has_many :texts

  #def fullname
    ##{self.firstName} #{self.lastName}"
  end


