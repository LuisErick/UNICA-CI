class SecurityController < ApplicationController
  def index
  	if is_loged?
  		redirect_to profile_path
  	else
  		if params[:error] == '1'
  			@message = 'Usuario o contraeña inválidos'
  		end
  	end	
  end

  def login
  	username = params[:username]
  	password = params[:password]
  	if auth(username,password)
  		redirect_to profile_path
  	else
  		redirect_to controller: 'security', action: 'index', error: '1'
  	end
  end

  def logout
  	session.destroy
  	redirect_to security_path
  end

  def auth(username,password)
  	user = User.where(username: username, password: password).last
  	unless user.nil?
  		session[:id] = user.id
  		session[:state] = true
  		return true
  	else
  		return false
  	end
  end
end
