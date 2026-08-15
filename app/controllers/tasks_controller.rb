class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def login
    email = params[:email]
    password = params[:password]

    if email.present? && password.present?
      flash[:notice] = "Login สำเร็จ"
    else
      flash[:alert] = "กรุณากรอก Email และ Password"
    end

    redirect_to tasks_path
  end
end