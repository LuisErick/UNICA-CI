class StudentsController < ApplicationController
  def index
  	@students = Student.all
  end

  def schedules
  end

  def notes
  end

  def certificates
  end
end
