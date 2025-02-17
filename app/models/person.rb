class Person < ActiveRecord::Base

validates :dni, numericality:  { only_integer: true }, length: { is: 8 }
	
	belongs_to :user
	belongs_to :marital_status

	has_one :teacher
	has_one :student
	has_one :clerk
	has_one :administrator
	has_one :unica_person
	has_one :postgrade_person

	has_many :pre_matriculations
end
