class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate_active_admin_user!
    authenticate_user!
    unless current_user.role?(:admin)
      flash[:alert] = 'У Вас нет прав доступа!'
      redirect_to root_path
    end
  end
end
