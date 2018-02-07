class CreateMovieSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :movie_sessions do |t|
      t.references :movie, foreign_key: true
      t.datetime :time

      t.timestamps
    end
  end
end
