class ConversationHistoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project

  def create
    @project = Project.find(params[:project_id])
    @conversation = @project.conversation_histories.new(conversation_params)
    @conversation.user = current_user
    if @conversation.save
      redirect_to @project, notice: 'Comment added successfully'
    else
      redirect_to @project, alert: 'Failed to add comment'
    end
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end


  def conversation_params
    params.require(:conversation_history).permit(:comment, :status)
  end
end
