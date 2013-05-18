class ProjectStepsController < ApplicationController
  include Wicked::Wizard
  before_filter :authenticate_user!
  #load_and_authorize_resource :class => Project

  steps :add_partners, :submit_proposal, :submit_report

  def show
    @project = Project.find(params[:project_id])
    render_wizard
  end


  def update
    @project = Project.find(params[:project_id])
    @project.update_attributes(params[:project])
    render_wizard @project, :project_id => @project.id
  end


end
