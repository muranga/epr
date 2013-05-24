class ProjectsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  def index

  end

  def show
    if @project.status == 'new'
      redirect_to project_add_partner_path(:project_id => @project.id), notice: 'You need to add members to your project.'
    elsif @project.status == 'participants'
      redirect_to project_submit_proposal_path(:project_id => @project.id), notice: 'You should submit your proposal'
    elsif @project.status == 'concept'
      redirect_to project_review_path(:project_id => @project.id), notice: 'You proposal is being reviewed'
    elsif @project.status == 'approved'
      redirect_to project_report_path(:project_id => @project.id), notice: 'You should submit your report.'
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
      redirect_to project_add_partner_path(:project_id => @project.id), notice: 'Project was successfully created.'
    else
      render "new"
    end
  end

  def update
    if @project.update_attributes(params[:project])
      redirect_to @project, notice: 'Project was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @project.destroy

    redirect_to projects_url
  end

  def get_add_partner
    get_project()
    render :action => 'add_partners.html'
  end

  def post_add_partner
    get_project()
    if @project.update_attributes(params[:project])
      redirect_to project_submit_proposal_path(:project_id => @project.id), notice: 'You should now submit your proposal.'
    else
      render :action => 'add_partners.html'
    end
  end


  def get_submit_proposal
    get_project()
    render :submit_proposal
  end

  def post_submit_proposal
    get_project()
    if @project.update_attributes(params[:project])
      redirect_to project_review_path(:project_id => @project.id), notice: 'You proposal is now ready for review.'
    else
      render :action => 'submit_proposal.html'
    end
  end

  def review()
    get_project()
  end
  def report()
    get_project()
  end
  def put_report()
    get_project()
    if @project.update_attributes(params[:project])
      redirect_to  @project, notice: 'Thank you for submitting your report.'
    else
      render :action => 'report'
    end
  end

  def get_project
    @project = Project.find(params[:project_id])
  end

end
