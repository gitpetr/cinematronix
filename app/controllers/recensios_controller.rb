class RecensiosController < ApplicationController
  before_action :load_model, only: %i[show edit update destroy]

  def index
    @recensios = Recensio.all
  end

  def show
  end

  def new
    @recensio = Recensio.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @recensio = @movie.recensios.create(recensio_params)
    redirect_to @movie
  end

  def edit
  end

  def update
    if @recensio.update(recensio_params)
      redirect_to recensios_path
    else
      render :edit
    end
  end

  def destroy
    @recensio.destroy
    redirect_to recensios_path
  end

  private

  def recensio_params
    params.require(:recensio).permit(:critic_name, :critic_email, :body)
  end

  def load_model
    @recensio = Recensio.find(params[:id])
  end
end
