class ContactController < ApplicationController
  def index

  end

  def email
  	sleep 5.0

  	redirect_to index_path
  end
end
