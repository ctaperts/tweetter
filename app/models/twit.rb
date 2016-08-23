class Twit < ApplicationRecord
  belongs_to :user

  validates :message, 
	    presence: true,
	    length: { 
		  maximum: 140,
		  too_long: "Twits can only be 140 characters max" 
		  }

end
