class MatriculationValidate < ActiveRecord::Base
	belongs_to :matriculation
	has_one :matriculation_validate_exam
	has_many :documents
end
