module ApplicationHelper
	def is_loged
		if session[:state]
			true
		else
			false
		end
	end
	def to_security
		if is_loged
			{controller: 'security', action: 'logout'}
		else
			security_path
		end

	end

	def paint_active(controller)
    current  = params[:controller]
    if current == controller
      'class=active'        
    end
  end
end
