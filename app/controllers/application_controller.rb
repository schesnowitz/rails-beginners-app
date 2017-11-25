class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :app_setting
  layout AppSetting.first.theme_name  

  def app_setting
    @app_setting = AppSetting.first
  end
end
