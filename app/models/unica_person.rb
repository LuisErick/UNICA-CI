class UnicaPerson < ActiveRecord::Base
	belongs_to :person
	belongs_to :college
end
