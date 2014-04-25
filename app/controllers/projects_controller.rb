class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render layout: 'application'
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

  def triangle
    render layout: 'triangle'
  end

  def pig_latin
    render layout: false
  end

  def youtv
    render layout: 'youtv'
  end

  def todo
    render layout: false
  end

  def legislator
    render layout: false
  end

  def creditcard
    render layout: 'creditcard'
  end

  def music_search
    render layout: false
  end

  private

  def project_params
    params.require(:project).permit(:name, :demo_url, :repo_url, :description, :image_url)
  end
  
end
