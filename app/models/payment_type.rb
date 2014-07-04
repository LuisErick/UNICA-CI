class PaymentType < ActiveRecord::Base
	has_many :payments
end
