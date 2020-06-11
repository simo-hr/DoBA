class ApplicationController < ActionController::Base
  before_action :current_user
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def ensure_current_user
    if @current_user.id != params[:id].to_i
      flash[:alert] = "エラーが発生しました"
      redirect_to root_url
    end 
  end
end
