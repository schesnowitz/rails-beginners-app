class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :app_setting

  def app_setting
    @app_setting = AppSetting.first
  end

  def not_administrator
    if !current_user.try(:admin?)
      flash[:danger] = "This does not exist or is reserved for administrators."
      redirect_back(fallback_location: root_path)
    end
  end
end
