module Features
  def create_todo(title)
    click_on 'Add new item'
    fill_in 'Title', with: title
    click_on 'Submit'
  end

  def display_title(title)
    have_css '.todos li', text: title
  end

  def display_completed_title(title)
    have_css '.todos li.completed', text: title
  end
end
