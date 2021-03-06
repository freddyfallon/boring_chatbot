require 'rails_helper'

RSpec.describe Message, type: :model do

  it 'is valid with text of six characters, a boring level of 2, and stage of 2' do
    message = Message.create(text: 'Hello!', boring_level: 2, stage: 1)
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

  it 'is not valid unless its boring_level is between 0 and 3' do
    message = Message.create(text: 'Hello!', boring_level: 5)
    expect(message).to have(1).error_on(:boring_level)
    expect(message).not_to be_valid
  end

  it 'is not valid unless it has a boring_level' do
    message = Message.create(text: 'a')
    expect(message).to have(2).errors_on(:boring_level)
    expect(message).not_to be_valid
  end

  it 'is not valid unless it has a stage' do
    message = Message.create(text: 'Hello!', boring_level: 2)
    expect(message).to have(2).errors_on(:stage)
    expect(message).not_to be_valid
  end

  it 'is not valid unless it has a stage between 0 and 3' do
    message = Message.create(text: 'Hello!', boring_level: 2, stage: 9)
    expect(message).to have(1).error_on(:stage)
    expect(message).not_to be_valid
  end
end
