class ApplicationController < ActionController::Base
  helper_method :current_user
  before_action :login_required
  before_action :set_seach

  def set_seach
    @q = User.ransack(params[:q])
    @search_users = @q.result(distinct: true)
  end

  private
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def login_required
    redirect_to login_url unless current_user
  end
end
