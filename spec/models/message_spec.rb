require 'rails_helper'

RSpec.describe Message, type: :model do

  it 'is valid with text of more than one character and boring level of 2' do
    user = User.create(email: 'test@test.test', password: 'password', password_confirmation: 'password')
    message = user.messages.create(text: 'Hello!', boring_level: 2)
    expect(message).to be_valid
  end

  it 'is not valid unless its text has more than one character' do
    user = User.create(email: 'test@test.test', password: 'password', password_confirmation: 'password')
    message = user.messages.create(text: 'a')
    expect(message).to have(1).error_on(:text)
    expect(message).not_to be_valid
  end

  it 'is not valid unless it has text' do
    user = User.create(email: 'test@test.test', password: 'password', password_confirmation: 'password')
    message = user.messages.create(boring_level: 2)
    expect(message).to have(2).errors_on(:text)
    expect(message).not_to be_valid
  end

  it 'is not valid unless its boring_level is between 1 and 3' do
    user = User.create(email: 'test@test.test', password: 'password', password_confirmation: 'password')
    message = user.messages.create(text: 'Hello!', boring_level: 5)
    expect(message).to have(1).error_on(:boring_level)
    expect(message).not_to be_valid
  end

  it 'is not valid unless it has a boring_level' do
    user = User.create(email: 'test@test.test', password: 'password', password_confirmation: 'password')
    message = user.messages.create(text: 'a')
    expect(message).to have(2).errors_on(:boring_level)
    expect(message).not_to be_valid
  end
end
