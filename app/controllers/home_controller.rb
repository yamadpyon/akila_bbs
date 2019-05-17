class HomeController < ApplicationController  
  def neko
    render "panda"
  end

  def index
    render "index"
  end


  def show
    @users=User.all
    render "show"
  end

  def create
    User.create!(name:params[:name])
    render "index"
  end
end
