class SessionsController < ApplicationController
  def new
  end

  def create
    signed_in_as params[:session][:email]
    redirect_to root_path
  end
end
