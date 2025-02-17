class UsersController < ApplicationController
  before_action :authenticate_user! # Ensure user is logged in

  def destroy
    current_user.destroy
    redirect_to root_path, notice: "Your account has been deleted."
  end
end
