class Teacher < ActiveRecord::Base
	belongs_to :person
	belongs_to :language
end
