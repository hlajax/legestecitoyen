class CorruptionCat < ApplicationRecord
  belongs_to :administrateur
	    extend FriendlyId
  friendly_id :titre, use: :slugged
end
