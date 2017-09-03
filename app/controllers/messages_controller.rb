class MessagesController < ApplicationController
  def index
    @messages = Message.all
    @array = @messages.order("RANDOM()")
  end
end
