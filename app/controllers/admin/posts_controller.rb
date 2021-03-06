module Admin
  class PostsController < AdminController
    before_action :load_model, only: %i[show edit update destroy]

    def index
      @posts = Post.all
    end

    def show
    end

    def new
      @post = Post.new
    end

    def create
      @post = Post.new(post_params)
      if @post.save
        redirect_to admin_posts_path
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @post.update(post_params)
        redirect_to admin_posts_path
      else
        render :edit
      end
    end

    def destroy
      @post.destroy
      redirect_to admin_posts_path
    end

    private

    def post_params
      params.require(:post).permit(:title, :body)
    end

    def load_model
      @post = Post.find(params[:id])
    end
  end
end
