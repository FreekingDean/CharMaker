class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate

  helper_method :current_user

  def current_user
    User.first
  end

  private
  def authenticate
    redirect_to '/' unless current_user
  end
end
