require 'rails_helper'

describe Todo, '#completed?' do
  it 'return true if completed_at is not nil' do
    todo = Todo.new completed_at: Time.current
    expect(todo).to be_completed
  end

  it 'returns false if completed_at is not set' do
    todo = Todo.new completed_at: nil
    expect(todo).not_to be_completed
  end
end

describe Todo, '#complete!' do
  it 'updated completed_at' do
    todo = Todo.create(completed_at: nil)
    todo.complete!

    expect(todo).to be_completed
  end
end
