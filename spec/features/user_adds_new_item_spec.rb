require 'rails_helper'

feature 'User add new item to Todo List' do
  scenario 'successfully' do
    sign_in

    create_todo 'Foo'

    expect(page).to display_title 'Foo'
  end

end
