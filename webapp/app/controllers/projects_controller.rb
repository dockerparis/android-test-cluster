class ProjectsController < ApplicationController
  def new
  	@project = Project.new
  end

  def create
  	@project = Project.new(params[:project])
    if @project.save
      redirect_to @project
    else
      render "new"
    end
  end

  def index
    @apis = Api.all
  end

  def conf
    
  end
end
