class TeachersController < ApplicationController
  def index
  	@teachers = Teacher.all
  end

  def schedules
  end

  def salaries
  end

  def comments
  end
end
