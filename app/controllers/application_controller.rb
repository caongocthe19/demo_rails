# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def after_sign_in_path_for(_resource)
    dashboard = { "admin" => dashboard_path, "client" => root_path }
    dashboard[current_user.role]
  end

  def after_sign_out_path_for(_resource_or_scope)
    root_path
  end
end
