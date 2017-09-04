require 'rails_helper'

feature 'Chat page' do
  scenario 'Visiting the chat page' do
    visit '/'
    expect(page).to have_content('Just how boring are you?')
  end
end
