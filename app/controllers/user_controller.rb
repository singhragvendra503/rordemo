class UsersController < ApplicationController
    def check_email
      email = params[:email]
      exists = User.exists?(email: email)
      render json: { exists: exists }
    end
  end
  