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

	def security_message
		if is_loged
			'LOGOUT'
		else
			'LOGIN'
		end
	end
	
	def paint_active(controller)
		if controller.class.to_s == 'Array'
			if controller[0]==params[:controller] or controller[1] == params[:controller]
				'class=active'
			end
		else
			if controller == params[:controller]
				'class=active'
			end
		end		
  	end


  	def div_container(controller)
		if controller.class.to_s == 'Array'
			if controller[0]==params[:controller] or controller[1] == params[:controller]
				
			else
				'class=container'
			end
		end		
  	end

end
