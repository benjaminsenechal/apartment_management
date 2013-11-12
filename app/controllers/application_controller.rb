class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :account_url

  def account_url
    return new_user_session_url unless user_signed_in?
    if user_signed_in?
      case current_user.class.name
      when 'Users::Tenant'
        documents_path
      when 'Users::Owner'
        rails_admin_path
      else
        root_url
      end
    end
  end
end
