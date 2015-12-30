class SubmissionsController < ApplicationController
 
  before_action :set_assignment

  def index
    @links = Link.new
    @sumbissions = Submission.all
    @comments = Comment.all
  end

  def new 
    @submission =@assignment.submissions.new 
  end

  def create
    @submission = @assignment.submission.create sub_params
      if @submission.save
      flash[:notice] = 'Submission Success!'
      redirect_to assignment_submissions_path
      else
      flash[:error] = 'Sorry, Submission not Saved.'
      render :new 
    end
  end

  def edit
  end

  def show
  end

  def destroy
    
  end

 

  def incomplete_submission
  end

  def complete_submission
  end
  private

  def sub_params
    params.require(:submission).permit(
      :content, 
      user_id: [],
      assignment_id: []
      )
  end



  def set_assignment
    @assignment = Assignment.find params[:assignment_id] 
  end
end
