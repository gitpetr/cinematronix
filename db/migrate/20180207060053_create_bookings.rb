class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :seat
      t.references :movie_session, foreign_key: true

      t.timestamps
    end
  end
end
