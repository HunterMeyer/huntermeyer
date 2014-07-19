class ProjectsController < ApplicationController
  render layout: 'application'

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    if @project.save
      redirect_to projects_path
    else
      render 'new'
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :demo_url, :repo_url, :description, :image_url)
  end

end
