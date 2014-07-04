class Document < ActiveRecord::Base
	belongs_to :matriculation_validate
	belongs_to :document_type
end
