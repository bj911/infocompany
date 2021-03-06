class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_admin!
    if current_user
      redirect_to root_path unless current_user.admin
    else
      redirect_to new_user_session_path
    end
  end

  def after_sign_in_path_for(resource)
    current_user.admin ? admin_root_path : root_path
  end

  def after_sign_out_path_for(resource_or_scope)
    request.referrer
  end

end
