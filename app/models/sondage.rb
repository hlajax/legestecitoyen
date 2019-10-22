class Sondage < ApplicationRecord
  belongs_to :administrateur
  mount_uploader :image, ImageUploader
	    extend FriendlyId
  friendly_id :titre, use: :slugged
end
