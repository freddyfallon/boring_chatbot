class RepliesController < ApplicationController
  def index
    @first_replies = Reply.where(stage: 0)
    @stage_one_replies = Reply.where(stage: 1)
    @stage_two_replies = Reply.where(stage: 2)
    @stage_three_replies = Reply.where(stage: 3)
  end

  def new
    if current_user
      @reply = Reply.new
    else
      redirect_to replies_path
    end
  end

  def create
    @reply = Reply.new(reply_params)

    if @reply.save
      redirect_to replies_path
    else
      flash[:notice] = "Error creating reply. Please try again."
      redirect_to admin_path
    end
  end

  def edit
    @reply = Reply.find(params[:id])
  end

  def update
    @reply = Reply.find(params[:id])
    @reply.update(reply_params)
    redirect_to '/replies'
  end

  def destroy
    @reply = Reply.find(params[:id])
    @reply.destroy
    flash[:notice] = 'Reply deleted successfully'
    redirect_to '/reply'
  end

  def show
    @reply = Reply.find(params[:id])
  end


private

def reply_params
  params.require(:reply).permit(:text, :tolerance_level, :stage)
end
end
