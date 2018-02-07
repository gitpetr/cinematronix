module Admin
  class MovieSessionsController < AdminController
    before_action :load_model, only: %i[show edit update destroy]

    def index
      @movie_sessions = MovieSession.all
    end

    def show
    end

    def new
      @movie_session = MovieSession.new
    end

    def create
      @movie = Movie.find(params[:movie_id])
      @movie_session = @movie.movie_sessions.create(movie_session_params)
      redirect_to admin_movies_path
    end

    def edit
    end

    def update
      if @movie_session.update(movie_session_params)
        redirect_to admin_movies_path
      else
        render :edit
      end
    end

    def destroy
      @movie_session.destroy
      redirect_to admin_movies_path
    end

    private

    def movie_session_params
      params.require(:movie_session).permit(:time)
    end

    def load_model
      @movie_session = MovieSession.find(params[:id])
    end
  end
end

