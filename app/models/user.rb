class User < ActiveRecord::Base
	validates: terms_of_service, acceptance: true
	validates: :email, confirmation: true
	validates: :email_confirmation, presence: true
end
