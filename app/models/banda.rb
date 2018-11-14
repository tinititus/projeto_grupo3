class Banda < ApplicationRecord
	has_many :fas, through: :rating
end
