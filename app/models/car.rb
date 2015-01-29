class Car < ActiveRecord::Base
	validates :make, :model, presence: true

	validates :make, :model, length: {in: 2..50}
	# Bir diğer kullanım
	# validates :make, :model, length: {minimun: 2, maximum: 50}

	validates :vin, uniqueness: {case_sensitive: false}, presence: true
	validates :year, length: {is: 4}
	validates :year, :doors_count, numericality: {only_integer: true}
end