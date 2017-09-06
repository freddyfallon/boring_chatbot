class MessagesController < ApplicationController
  def index
    @first_messages = Message.where(boring_level: 0)
    @stage_one_messages = Message.where(stage: 1)
    @stage_two_messages = Message.where(stage: 2)
    @stage_three_messages = Message.where(stage: 3)
  end

  def new
    if current_user
      @message = Message.new
    else
      redirect_to messages_path
    end
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to messages_path
    else
      flash[:notice] = "Error creating message. Please try again."
      redirect_to admin_path
    end
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    @message = Message.find(params[:id])
    @message.update(message_params)
    redirect_to '/messages'
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    flash[:notice] = 'Message deleted successfully'
    redirect_to '/messages'
  end

  def show
    @message = Message.find(params[:id])
  end


private

def message_params
  params.require(:message).permit(:text, :boring_level, :stage)
end

end
