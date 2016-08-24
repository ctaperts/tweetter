class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :twits
  has_many :relationships
  has_many :friends, through: :relationships
  has_many :likes

  has_many :inverse_relationships, 
	    class_name: "Relationship", 
	    foreign_key: :friend_id

  has_many :inverse_friends,
	    through: :relationships,
	    source: :user

  validates :username,
	    presence: true,
	    uniqueness: true
end
