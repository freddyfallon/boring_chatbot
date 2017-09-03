require 'rails_helper'

RSpec.describe Message, type: :model do

  it 'is valid with text of more than one character and boring level of 2' do
    message = Message.create(text: 'Hello!', boring_level: 2)
    expect(message).to be_valid
  end

  it 'is not valid unless its text has more than one character' do
    message = Message.create(text: 'a')
    expect(message).to have(1).error_on(:text)
    expect(message).not_to be_valid
  end

  it 'is not valid unless it has text' do
    message = Message.create(boring_level: 2)
    expect(message).to have(2).errors_on(:text)
    expect(message).not_to be_valid
  end

  it 'is not valid unless its boring_level is between 1 and 3' do
    message = Message.create(text: 'Hello!', boring_level: 5)
    expect(message).to have(1).error_on(:boring_level)
    expect(message).not_to be_valid
  end

  it 'is not valid unless it has a boring_level' do
    message = Message.create(text: 'a')
    expect(message).to have(2).errors_on(:boring_level)
    expect(message).not_to be_valid
  end
end
