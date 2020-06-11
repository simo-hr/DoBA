class MatchesController < ApplicationController
  before_action :has_user_infomations?, only: [:new]


  def index
    @matches = Match.search(params[:search]).order(updated_at: "DESC").page(params[:page]).per(10)
  end
  
  def show
    if current_user.nil?
      flash[:alert] = "ログインしてください"
      redirect_to "/matches"
    else
    @match = Match.find_by(id: params[:id])
    end
  end

  def new
    @match = Match.new
  end

  def create
		@match = Match.new(match_params)
		@match.user_id = current_user.id
    if @match.save
      flash[:notice] = "募集を投稿しました。"
			redirect_to root_url
		else
			flash.now[:alert] = "投稿に失敗しました"
			render 'new'
    end
  end

  def edit
    @match = Match.find_by(id: params[:id])
  end

  def update
    @match = Match.find_by(id: params[:id])
    if @match.update_attributes(match_params)
      flash.now[:notice] = "募集内容を更新しました"
      redirect_to "/matches/#{@match.id}"
    else
      render 'edit'
    end
  end

  def destroy
    Match.find(params[:id]).destroy
    flash[:alert] = "募集を削除しました"
    redirect_to "/users/#{@current_user.id}"
  end

  private

  def match_params
		params.require(:match).permit(:content, :title, :match_day, :vanue)
  end

  def has_user_infomations?
    if current_user.team_name == "" || current_user.area == "" || current_user.level == "" || current_user.team_name == nil || current_user.area == nil || current_user.level == nil
      flash[:alert] = "ユーザー情報を登録してください"
      redirect_to "/users/#{current_user.id}/edit"
    end
  end
  

end
