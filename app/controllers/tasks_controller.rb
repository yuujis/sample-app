class TasksController < ApplicationController
  
  def index
    @user = User.find(params[:user_id])
    @tasks = @user.tasks.all
    
  end
  
  def new
    @user = User.find(params[:user_id])
    @task = Task.new
  end
  
  def create
    @user = User.find(params[:user_id])
    
    @task = @user.tasks.build(task_params)
    if @task.save
      flash[:success] = "タスクを新規作成しました。"
      redirect_to user_tasks_url @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:user_id])
    @task = Task.find(params[:id])
   render :show
   
  end

  def edit
    @user = User.find(params[:user_id])
    @task =  Task.find(params[:id]) 
  end

  def update
    @user = User.find(params[:user_id])
    @task = Task.find(params[:id])
    if @task.update_attributes(task_params)
      flash[:success] = '更新しました。'
      redirect_to user_tasks_url @user
    end
    @task.save
    
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    if @task.destroy
      flash[:success] = '削除しました。'
      redirect_to user_tasks_url 
      
    end
  end
  
  private
  
    def task_params
      params.require(:task).permit(:task_name, :task_description)
    end
end
