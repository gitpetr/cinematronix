module Admin
  class MoviesController < Admin::AdminController
    before_action :load_model, only: %i[show edit update destroy]

    def index
      @movies = Movie.all
    end

    def show
    end

    def new
      @movie = Movie.new
    end

    def create
      @movie = Movie.new(movie_params)
      if @movie.save
        redirect_to admin_movies_path
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @movie.update(movie_params)
        redirect_to admin_movies_path
      else
        render :edit
      end
    end

    def destroy
      @movie.destroy
      redirect_to admin_movies_path
    end

    private

      def movie_params
        params.require(:movie).permit(:title, :description, :image)
      end

      def load_model
        @movie = Movie.find(params[:id])
      end
  end
end
