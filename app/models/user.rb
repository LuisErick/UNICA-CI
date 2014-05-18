class User < ActiveRecord::Base
	belongs_to :permission
	has_one :person
end
