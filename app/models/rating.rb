class Rating < ApplicationRecord
	# todo rating id é linkado a um fã, pelo fa_id
	belongs_to :fa
	# todo rating id é linkado a uma banda, pelo banda_id
	belongs_to :banda
end
