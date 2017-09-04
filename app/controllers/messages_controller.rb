class MessagesController < ApplicationController
  before_action :set_message
  
  def index
    json_response(@messages)
  end

end
