class Corruption < ApplicationRecord
  belongs_to :corruption_cat
  belongs_to :citoyen
  mount_uploader :image, ImageUploader
      extend FriendlyId
  friendly_id :titre, use: :slugged
end
