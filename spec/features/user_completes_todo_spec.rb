require 'rails_helper'

feature 'User completes todo item' do
  scenario 'successfully' do
    sign_in

    create_todo 'The Developer Conference'

    click_on 'Done'

    expect(page).to display_completed_title 'The Developer Conference'
  end
end
