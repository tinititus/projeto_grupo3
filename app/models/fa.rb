class Fa < ApplicationRecord

	has_many :interpretations

	# um fã pode ter vários ratings
	has_many :ratings, through: :banda

end
