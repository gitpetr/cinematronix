class Admin::BlogsController < ApplicationController
  before_action :authenticate_admin_user!
  before_action :load_model, only: %i[show edit update destroy]

  def index
    @posts = Blog.all
  end

  def show
  end

  def new
    @post = Blog.new
  end

  def create
    @post = Blog.new(blog_params)
    if @post.save
      redirect_to admin_blogs_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(blog_params)
      redirect_to admin_blogs_path
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to admin_blogs_path
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :body)
  end

  def load_model
    @post = Blog.find(params[:id])
  end
end
