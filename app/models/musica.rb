class Musica < ApplicationRecord
	belongs_to :banda
	has_many :interpretations#, dependent: :destroy #Dan
end
