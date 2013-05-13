class ProjectsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  def index

  end

  def show
    if @project.status == 'new'
      redirect_to project_steps_path(:project_id => @project.id), notice: 'You need to add members to your project.'
    end
  end

  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = current_user.projects.build(params[:project])
    @project.status="new"

    if @project.save
      redirect_to project_steps_path(:project_id => @project.id), notice: 'Project was successfully created.'
    else
      render "new"
    end
  end

  def update
    if @project.update_attributes(params[:project])
      redirect_to @project, notice: 'Project was successfully updated.'
    else
      brender action: "edit"
    end
  end

  def destroy
    @project.destroy

    redirect_to projects_url
  end
end
