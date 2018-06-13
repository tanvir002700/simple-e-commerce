module Admin
  class AdminController < ApplicationController
    before_action :authorized_user

    private

    def authorized_user
      redirect_to root_path unless current_user.role == 'admin'
    end
  end
end
