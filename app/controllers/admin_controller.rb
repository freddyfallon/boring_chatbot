class AdminController < ApplicationController
  def index
    @first_messages = Message.where(boring_level: 0)
    @first_replies = Reply.where(tolerance_level: 0)
    @stage_one_messages = Message.where(stage: 1)
    @stage_two_messages = Message.where(stage: 2)
    @stage_three_messages = Message.where(stage: 3)
    @stage_one_replies = Reply.where(stage: 1)
    @stage_two_replies = Reply.where(stage: 2)
    @stage_three_replies = Reply.where(stage: 3)
  end

  def new_message
    @message = Message.new
  end

  def show_message
    @message = Message.find(params[:id])
  end


  def create_message
  @message = Message.new(message_params)
    respond_to do |format|
      if @message.save
        format.html { redirect_to @message, notice: 'Message was successfully created.' }
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_message
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy_message
    @message.destroy
    respond_to do |format|
      format.html { redirect_to messages_url, notice: 'Message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end
