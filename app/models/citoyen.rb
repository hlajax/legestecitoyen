class Citoyen < ApplicationRecord
acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_many :petitions
	has_many :corruptions
	mount_uploader :avatar, ImageUploader
end
