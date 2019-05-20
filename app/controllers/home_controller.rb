class HomeController < ApplicationController

  def index
    render "index"
  end

  def create
    User.create!(name:params[:name])
    render "index"
  end

  def show
    @users=User.all
    render "show"
  end


  def edit
    @user=User.find_by(id:params[:id])
    render "edit"
  end

  def update
    User.find_by(id:params[:id]).update!(name:params[:name])
    redirect_to controller: :home, action: :show
  end

  def destroy
    User.find_by(id:params[:id]).destroy!
    redirect_to controller: :home, action: :show
  end
end
