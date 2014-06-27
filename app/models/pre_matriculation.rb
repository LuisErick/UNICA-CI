class PreMatriculation < ActiveRecord::Base

	after_create :create_code

	def create_code
		self.code = random_string.upcase
	end

	def self.random_string
	a = ("a".."z")
    b = (0..9)
    c = a.to_a + b.to_a
    key = c.shuffle[0,8].join
  end
end
