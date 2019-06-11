class HomeController < ApplicationController

  def index
    @posts = Post.all
    render "index"
  end

  def index2
    @posts = Post.all
    render "index2"
  end

  def index3
    @posts = Post.all
    render "index3"
  end

  def create
    path = Rails.application.routes.recognize_path(request.referer)

    case path[:action]
    when "index"
      Post.create!(name: params[:name], content: params[:content])
      redirect_to controller: :home, action: :index
    when "index2"
      Post.create!(name: params[:name], content: params[:content])
      redirect_to controller: :home, action: :index2
    when "index3"
      Post.create!(name: params[:name], content: params[:content])
      redirect_to controller: :home, action: :index3
    end

  end

end
