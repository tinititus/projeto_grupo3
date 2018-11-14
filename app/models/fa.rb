class Fa < ApplicationRecord
	# um fã pode ter vários ratings
	has_many :ratings, through: :banda
end
