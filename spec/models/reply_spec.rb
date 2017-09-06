require 'rails_helper'

RSpec.describe Reply, type: :model do
  it 'is valid with text 16 characters, a tolerance level of 2, and stage of 2' do
    reply = Reply.create(text: 'This is a reply!', tolerance_level: 2, stage: 2)
    expect(reply).to be_valid
  end

  it 'is not valid unless its text has more than one character' do
    reply = Reply.create(text: 'a')
    expect(reply).to have(1).error_on(:text)
    expect(reply).not_to be_valid
  end

  it 'is not valid unless it has text' do
    reply = Reply.create(tolerance_level: 2)
    expect(reply).to have(2).errors_on(:text)
    expect(reply).not_to be_valid
  end

  it 'is not valid unless its tolerance_level is between 0 and 3' do
    reply = Reply.create(text: 'Hello!', tolerance_level: 5)
    expect(reply).to have(1).error_on(:tolerance_level)
    expect(reply).not_to be_valid
  end

  it 'is not valid unless it has a tolerance_level' do
    reply = Reply.create(text: 'a')
    expect(reply).to have(2).errors_on(:tolerance_level)
    expect(reply).not_to be_valid
  end

  it 'is not valid unless it has a stage' do
    reply = Reply.create(text: 'Hello!', tolerance_level: 2)
    expect(reply).to have(2).errors_on(:stage)
    expect(reply).not_to be_valid
  end

  it 'is not valid unless it has a stage between 0 and 3' do
    reply = Reply.create(text: 'Hello!', tolerance_level: 2, stage: 9)
    expect(reply).to have(1).error_on(:stage)
    expect(reply).not_to be_valid
  end
end
