class Message < ApplicationRecord
  validates :text, length: { minimum: 2 }, presence: true
  validates :boring_level, numericality: { greater_than: 0, less_than_or_equal_to: 3 }, presence: true

  def item_params
    params.permit(:text, :boring_level)
  end

  def set_message
    @message = Message.find(params[:message_id])
  end

end
