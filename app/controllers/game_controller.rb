class GameController < ApplicationController
  def index
    @messages = Message.all
    @first_messages = [].push(Message.find_by boring_level: 1)
    @first_message = @first_messages.sample
    @level_one_messages = [].push(Message.find_by boring_level: 1)
    @level_one_message = @level_one_messages.sample
    @level_two_messages = [].push(Message.find_by boring_level: 2)
    @level_two_message = @level_two_messages.sample
    @level_three_messages = [].push(Message.find_by boring_level: 3)
    @level_three_message = @level_three_messages.sample
    @level_one_replies = [].push(Reply.find_by tolerance_level: 1)
    @level_one_reply = @level_one_replies.sample
    @level_two_replies = [].push(Reply.find_by tolerance_level: 2)
    @level_two_reply = @level_two_replies.sample
    @level_three_replies = [].push(Reply.find_by tolerance_level: 3)
    @level_three_reply = @level_three_replies.sample
  end

end
