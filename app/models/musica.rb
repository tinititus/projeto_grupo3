class Musica < ApplicationRecord
	belongs to :banda
	has_many :interpretations, dependent: :destroy
end
