class ApplicationController < ActionController::Base
    def current_user
        @current_user = User.find_by(id: session[:id])
    end


    def authenticate_user
      @current_user = User.find_by(id: session[:user_id])
      if @current_user == nil
        flash[:notice] = "ログインしてください"
        redirect_to root_url
      end
    end
       
      helper_method :current_user, :authenticate_user
end
