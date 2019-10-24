class Petition < ApplicationRecord
  acts_as_votable
  belongs_to :petition_cat
  belongs_to :citoyen
   mount_uploader :image, ImageUploader
    extend FriendlyId
  friendly_id :titre, use: :slugged
end
