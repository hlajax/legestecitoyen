class Actualite < ApplicationRecord
  belongs_to :administrateur
  belongs_to :category
  mount_uploader :image, ImageUploader
    extend FriendlyId
  friendly_id :titre, use: :slugged
end
