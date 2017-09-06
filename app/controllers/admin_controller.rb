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

end
