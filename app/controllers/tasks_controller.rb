class TasksController < ApplicationController
  
  def index
    @task = User.find(params[:user_id])
   
  end
  
  def create
  end

  def show
     @task = User.find(params[:id])
    render :show
  end

  def edit
  end

  def update
    
  end

  def destory
  end
end
