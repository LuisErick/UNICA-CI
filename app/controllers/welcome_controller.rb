class WelcomeController < ApplicationController
  def index
  	if is_loged?
  		redirect_to profile_path
  	end

  	respond_to do |format|
      format.html
      format.js
    end
  end
end
