class Teacher < ActiveRecord::Base
	belongs_to :person
	belongs_to :language

	has_many :packages
end
