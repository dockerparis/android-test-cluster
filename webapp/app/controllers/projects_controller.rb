require 'open3'

class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
  	@project = Project.new
  end

  def create
	  @project = Project.new(project_params)
    if @project.save
      Rails.logger.debug project_params.inspect
      project_params[:api_ids].each do |id|
        Rails.logger.debug Api.find(id).name
        Open3.popen3("/script/emulator.sh", @project.name, @project.url, Api.find(id).name) do |stdin, stdout, stderr, wait_thr|
          p stdout.read
        end
      end
      redirect_to @project
    else
      render "new"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :url, {api_ids: []})
    end
end
