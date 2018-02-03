class AddMovieReferencesToRecensios < ActiveRecord::Migration[5.1]
  def change
    add_reference :recensios, :movie, foreign_key: true
  end
end
