class Videos < ActiveRecord::Base
  belongs_to :user


  #validates :url, :presence => true#, :format {:with => //}#TODO Jeff, I'd like a REGEX here to determine if this is a valid URL. Let's figure out how to do that

end
