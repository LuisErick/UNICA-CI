class TasksController < ApplicationController
  def pending_matriculations
  	@pendings = Matriculation.where(state: false)
  end
end
