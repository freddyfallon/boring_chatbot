require 'rails_helper'

feature 'Chat page' do
  scenario 'Visiting the chat page' do
    visit '/'
    expect(page).to have_content('Send your first message to get started')
  end
end
