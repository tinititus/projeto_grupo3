class Fa < ApplicationRecord
	has_one :usuario#, dependent: :destroy
	has_many :ratings#, dependent: :destroy
	has_many :interpretations#, dependent: :destroy
	has_many :bandas, through: :rating
end
