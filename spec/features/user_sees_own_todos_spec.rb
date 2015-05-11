require 'rails_helper'

feature 'User sees own todos' do
  scenario 'does not see others todos' do
    Todo.create!(title: 'Buy milk', email: 'someone@email.com')

    sign_in_as 'users@email.com'
    expect(page).not_to display_title 'Buy milk'
  end
end
