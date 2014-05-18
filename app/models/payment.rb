class Payment < ActiveRecord::Base
	belongs_to :matriculation
	belongs_to :payment_type
end
