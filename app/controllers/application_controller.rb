class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  # ログイン後はhomes/aboutページに遷移
  def after_sign_in_path_for(resource)
    about_path
  end
  
  # ログアウト後はhomes/topページ（ルートパスに設定済）に遷移
  def after_sign_out_path_for(resource)
    root_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
