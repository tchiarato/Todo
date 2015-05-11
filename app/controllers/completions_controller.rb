class CompletionsController < ApplicationController
  def create
    todo.complete!
    redirect_to todos_path
  end

  private

  def todo
    Todo.find(params[:todo_id])
  end
end
