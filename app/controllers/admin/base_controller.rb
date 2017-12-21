class Admin::BaseController < ApplicationController
  layout 'admin'
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def authenticate_user!
    redirect_to new_admin_user_session_path unless current_admin_user.present?
  end
end
