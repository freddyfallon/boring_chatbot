require 'rails_helper'

RSpec.describe Reply, type: :model do
  it 'is valid with text of more than one character and tolerance level of 2' do
    user = User.create(email: 'test@test.test', password: 'password', password_confirmation: 'password')
    reply = user.replies.create(text: 'This is a reply!', tolerance_level: 2)
    expect(reply).to be_valid
  end
end
