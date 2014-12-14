class ProjectsController < ApplicationController
  def new
  end

  def create
  end

  def index
    @apis = Api.all
  end

  def conf
    
  end
end
