class GameController < ApplicationController
  def index

    #Opening message

    @first_messages = Message.where(boring_level: 0, stage: 0)
    @first_message = @first_messages.sample

    @first_replies = Reply.where(tolerance_level: 0, stage: 0)
    @first_reply = @first_replies.sample

    #Stage 1 - messages
    @stage_one_messages_level_one = Message.where(boring_level: 1, stage: 1)

    @stage_one_message_level_one = @stage_one_messages_level_one.sample

    @stage_one_messages_level_two = Message.where(boring_level: 2, stage: 1)

    @stage_one_message_level_two = @stage_one_messages_level_two.sample

    @stage_one_messages_level_three = Message.where(boring_level: 3, stage: 1)

    @stage_one_message_level_three = @stage_one_messages_level_three.sample

    #Stage 1 - replies

    @stage_one_replies_level_one = Reply.where(tolerance_level: 1, stage: 1)

    @stage_one_reply_level_one = @stage_one_replies_level_one.sample

    @stage_one_replies_level_two = Reply.where(tolerance_level: 2, stage: 1)

    @stage_one_reply_level_two = @stage_one_replies_level_two.sample

    @stage_one_replies_level_three = Reply.where(tolerance_level: 3, stage: 1)

    @stage_one_reply_level_three = @stage_one_replies_level_three.sample

    #Stage 2 - messages

    @stage_two_messages_level_one = Message.where(boring_level: 1, stage: 2)

    @stage_two_message_level_one = @stage_two_messages_level_one.sample

    @stage_two_messages_level_two = Message.where(boring_level: 2, stage: 2)

    @stage_two_message_level_two = @stage_two_messages_level_two.sample

    @stage_two_messages_level_three = Message.where(boring_level: 3, stage: 2)

    @stage_two_message_level_three = @stage_two_messages_level_three.sample

    #Stage 2 - replies
      @stage_two_replies_level_one = Reply.where(tolerance_level: 1, stage: 2)

    @stage_two_reply_level_one = @stage_two_replies_level_one.sample

    @stage_two_replies_level_two = Reply.where(tolerance_level: 2, stage: 2)

    @stage_two_reply_level_two = @stage_two_replies_level_two.sample

    @stage_two_replies_level_three = Reply.where(tolerance_level: 3, stage: 2)

    @stage_two_reply_level_three = @stage_two_replies_level_three.sample

    #Stage 3 - messages

    @stage_three_messages_level_one = Message.where(boring_level: 1, stage: 3)

    @stage_three_message_level_one = @stage_three_messages_level_one.sample

    @stage_three_messages_level_two = Message.where(boring_level: 2, stage: 3)

    @stage_three_message_level_two = @stage_three_messages_level_two.sample

    @stage_three_messages_level_three = Message.where(boring_level: 3, stage: 3)

    @stage_three_message_level_three = @stage_three_messages_level_three.sample

    #Stage 3 - replies

    @stage_three_replies_level_one = Reply.where(tolerance_level: 1, stage: 3)

    @stage_three_reply_level_one = @stage_three_replies_level_one.sample

    @stage_three_replies_level_two = Reply.where(tolerance_level: 2, stage: 3)

    @stage_three_reply_level_two = @stage_three_replies_level_two.sample

    @stage_three_replies_level_three = Reply.where(tolerance_level: 3, stage: 3)

    @stage_three_reply_level_three = @stage_three_replies_level_three.sample

  end

end
