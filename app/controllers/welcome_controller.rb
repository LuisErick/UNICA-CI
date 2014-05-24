class WelcomeController < ApplicationController
  def index
  	if is_loged?
  		redirect_to profile_path
  	end
  end
end
