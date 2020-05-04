class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)  
		if @user.save
			session[:user_id] = @user.id
			redirect_to root_url
    else
			render 'new'
    end
	end

	def login_form
		@user = User.new
	end

	def login
		@user = User.find_by(name: params[:name])
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			redirect_to root_url
		else
			flash.now[:notice]  = "ログインに失敗しました"
			render  'login_form'
		end
	end

	def logout
		session[:user_id] = nil
		redirect_to root_url
	end

	private

    def user_params
      params.require(:user).permit(:name,:password)
    end
end
