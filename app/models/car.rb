class Car < ActiveRecord::Base
	validates :make, :model, length: {in: 2..50, too_short: "en az %{count} karakter girmelisiniz.", too_long: "en fazla %{count} karakter girebilirsiniz."}
	# Bir diğer kullanım
	# validates :make, :model, length: {minimun: 2, maximum: 50}

	validates :vin, uniqueness: {case_sensitive: false, message: "Bu alan benzersiz olmalıdır."}, presence: {message: "Bu alanı boş bırakamazsınız."}
	validates :year, length: {is: 4}
	validates :year, inclusion: {in: 1990..Time.now.year}, allow_nil: true
	validates :doors_count, numericality: {only_integer: true, odd: true}
end