require 'rails_helper'

RSpec.describe Message, type: :model do
  it 'is not valid unless its text has more than one character' do
    message = Message.create(text: 'a')
    expect(message).to have(1).error_on(:text)
    expect(message).not_to be_valid
  end
end
