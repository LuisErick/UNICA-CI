class Teacher < ActiveRecord::Base
	belongs_to :person
	has_many :packages
end
