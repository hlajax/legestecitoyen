class Administrateur < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_many :categories
	has_many :actualites
	has_many :petition_cats
	has_many :sondages
	has_many :corruption_cats
end
