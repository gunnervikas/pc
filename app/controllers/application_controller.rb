class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource_or_scope)
     return welcome_index_url
  end

  def after_sign_out_path_for(resource_or_scope)
    return new_user_session_path
  end

end
