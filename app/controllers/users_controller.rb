class UsersController < ApplicationController

  
  def show
    @user = current_user
    @matches = @user.matches
  end


	def new
		@user = User.new
	end

	def create
    @user = User.new(user_params)  
		if @user.save
      session[:user_id] = @user.id
      flash.now[:notice]  = "新規登録が完了しました。ユーザー情報を登録してください。"
			redirect_to root_url
    else
      flash.now[:alert] = "登録に失敗しました。"
			render 'new'
    end
	end

	def login_form
		@user = User.new
	end

	def login
		@user = User.find_by(email: params[:email])
		if @user 
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
			redirect_to root_url
		else
			flash.now[:alert]  = "ログインに失敗しました"
			render  'login_form'
		end
	end

	def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
		redirect_to root_url
  end
  
  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    if @user.update_attributes(user_params)
      flash[:notice] = "更新しました"
      redirect_to "/users/#{@user.id}"
    else
      render 'edit'
    end
  end


	private

    def user_params
      params.require(:user).permit(:team_name,:team_img, :area, :level, :email, :password)
    end


end
