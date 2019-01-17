class UsersController < ApplicationController


  def index
  end

  def create
    User.create(username: params[:username], email: params[:email], password: params[:password])
    redirect_to '/dashboard'
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
