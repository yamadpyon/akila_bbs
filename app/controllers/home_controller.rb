class HomeController < ApplicationController

  def index
    @posts = Post.all
    render "index"
  end

  def create
    Post.create!(contents:params[:contents])
    redirect_to controller: :home, action: :index
  end

  def edit
    @post=Post.find_by(id:params[:id])
    render "edit"
  end

  def update
    Post.find_by(id:params[:id]).update!(contents:params[:contents])
    redirect_to controller: :home, action: :index
  end

  def destroy
    Post.find_by(id:params[:id]).destroy!
    redirect_to controller: :home, action: :index
  end

  def favorite
    content=Post.find_by(id:params[:id])
    favorite_number=content.favorite + 1
    content.update!(favorite:favorite_number)
    redirect_to controller: :home, action: :index
  end
end
