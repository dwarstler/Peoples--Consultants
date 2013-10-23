class Donors < ActiveRecord::Base
    has_many :donations

    devise :validatable

    validates :name, :presence => true
end
