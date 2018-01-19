class Movie::API < Grape::API
  get '/' do
    
    movie = Movie.all
    
    response = {
      status: 200,
      movie: movie.as_json
    }
    
    response.as_json
  end
end
