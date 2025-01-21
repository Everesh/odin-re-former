class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
  end

  private

  def user_params
    params.expect(user: [:username, :email, :password])
  end

end
