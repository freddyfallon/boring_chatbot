require 'rails_helper'

feature 'Admin page' do
  scenario 'visiting the admin page' do
    visit '/admin'
    expect(page).not_to have_content('Admin area')
  end
end
