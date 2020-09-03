class MessagesController < ApplicationController
  # before_action :ensure_current_user, only: [:index]

  def index
    @user = User.find(params[:user_id])
    @messages = Message.where(receive_user_id: @user.id).order(created_at: :desc)
    @sent_messages = Message.where(user_id: @user.id).order(created_at: :desc)
    # @user = User.find_by(params[:id])
    # @messages = Message.where(receive_user_id: @user).order(created_at: :desc)

  end

  def new
    @user = User.find_by(params[:id])
    send_ids = @current_user.messages.where(receive_user_id: @user.id).pluck(:id)
    receive_ids = @user.messages.where(receive_user_id: @current_user.id).pluck(:id)
    @messages = Message.where(id: send_ids + receive_ids).order(created_at: :desc)
    @message = Message.new
  end

  def create
    @user = User.find(params[:user_id])
    @message = @current_user.messages.build(message_params)
    @message.receive_user_id = @user.id
    if @message.save
      flash[:notice] = 'メッセージを送信しました。'
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = 'メッセージを送信できませんでした。'
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    flash[:alert] = 'メッセージを削除しました。'
    redirect_back(fallback_location: root_path)
  end

  private

    def message_params
      params.require(:message).permit(:content)
    end
end
