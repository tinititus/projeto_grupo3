class Banda < ApplicationRecord
	belongs_to :usuario#, dependent: :destroy #Dan
	has_many :ratings#, dependent: :destroy
	has_many :musicas#, dependent: :destroy
	has_many :fas, through: :rating
	has_many :interpretations, through: :musica
end
