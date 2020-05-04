class TasksController < ApplicationController
	before_action  :authenticate_user, {only: [:edit, :update]}

	def new
		@task = Task.new
	end


	def create
		@task = Task.new(task_params)
		@task.user_id = session[:user_id]
		if @task.save
			redirect_to root_url
		else
			flash.now[:notice] = "登録に失敗しました"
			render 'new'
		end
	end

	def edit
		@task = Task.find_by(id: params[:id])
	end

	def update
		@task = Task.find_by(id: params[:id])
		@task.update!(task_params)
		redirect_to "/tasks/#{@task.id}"
	end

	def destroy
		@task = Task.find_by(id: params[:id])
		@task.destroy
		redirect_to root_url
	end

	def index
		@tasks = Task.where(user_id: session[:user_id])
	end

	def show
		@task = Task.find_by(id: params[:id])
	end
private

	def task_params
		params.require(:task).permit(:content, :title, :start_time)
	end
end
