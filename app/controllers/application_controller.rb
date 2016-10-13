class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout 'flatly'

  private

  def after_sign_in_path_for(resource)
    dashboard_overview_path
  end

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied!"
    redirect_to dashboard_overview_path
  end
end
