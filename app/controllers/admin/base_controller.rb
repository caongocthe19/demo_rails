# frozen_string_literal: true

module Admin
  class BaseController < ApplicationController
    layout "admin"

    before_action :authenticate_user!
    before_action :correct_user

    private

    def correct_user
      return if current_user.admin?

      flash[:error] = "Access denied!"
      redirect_to root_path
    end
  end
end
