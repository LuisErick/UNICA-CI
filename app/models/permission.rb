class Permission < ActiveRecord::Base
	has_many :users
end
