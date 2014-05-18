class PostgradePerson < ActiveRecord::Base
	belongs_to :person
	belongs_to :postgrade_type
end
