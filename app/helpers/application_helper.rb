module ApplicationHelper
	def is_loged
		if session[:state]
			true
		else
			false
		end
	end
end
