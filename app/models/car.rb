class Car < ActiveRecord::Base
	validates :make, :model, length: {in: 2..50}
	# Bir diğer kullanım
	# validates :make, :model, length: {minimun: 2, maximum: 50}

	validates :vin, uniqueness: {case_sensitive: false}, presence: true
	validates :year, length: {is: 4}
	validates :year, numericality: {only_integer: true, less_than_or_equal_to: Time.now.year}
	validates :doors_count, numericality: {only_integer: true, odd: true}
end