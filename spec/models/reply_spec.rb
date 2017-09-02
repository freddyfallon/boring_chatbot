require 'rails_helper'

RSpec.describe Reply, type: :model do
  it 'is valid with text of more than one character and tolerance level of 2' do
    user = User.create(email: 'test@test.test', password: 'password', password_confirmation: 'password')
    reply = user.replies.create(text: 'This is a reply!', tolerance_level: 2)
    expect(reply).to be_valid
  end

  it 'is not valid unless its text has more than one character' do
    user = User.create(email: 'test@test.test', password: 'password', password_confirmation: 'password')
    reply = user.replies.create(text: 'a')
    expect(reply).to have(1).error_on(:text)
    expect(reply).not_to be_valid
  end

  it 'is not valid unless it has text' do
    user = User.create(email: 'test@test.test', password: 'password', password_confirmation: 'password')
    reply = user.replies.create(tolerance_level: 2)
    expect(reply).to have(2).errors_on(:text)
    expect(reply).not_to be_valid
  end

  it 'is not valid unless its tolerance_level is between 1 and 3' do
    user = User.create(email: 'test@test.test', password: 'password', password_confirmation: 'password')
    reply = user.replies.create(text: 'Hello!', tolerance_level: 5)
    expect(reply).to have(1).error_on(:tolerance_level)
    expect(reply).not_to be_valid
  end

  it 'is not valid unless it has a tolerance_level' do
    user = User.create(email: 'test@test.test', password: 'password', password_confirmation: 'password')
    reply = user.replies.create(text: 'a')
    expect(reply).to have(2).errors_on(:tolerance_level)
    expect(reply).not_to be_valid
  end
end
