class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def is_loged?
  	if session[:state]
  		true
  	else
  		false
  	end
  end
  def require_login
  	if !is_loged?
  	 redirect_to security_path
  	end
  end  
end
