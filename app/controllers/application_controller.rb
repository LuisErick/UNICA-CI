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
  def get_days    
    return {1 => "Lunes", 2 => "Martes",3 => "Miércoles",4 => "Jueves",5 => "Viernes",6 => "Sábado", 7 => "Domingo"}
  end 

  def to_hash(query)
    hash = Hash.new
    query.each do |m|
      hash[m.name] = m.id
    end
    return hash
  end
end
