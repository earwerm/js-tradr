class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  before_filter :authenticate

  private
  def authenticate
    return unless session[:user_id]

    @auth = User.find_by_id(session[:user_id])
    unless @auth
      session[:user_id] = nil
      redirect_to root_url
    end
  end
end
