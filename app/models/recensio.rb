class Recensio < ApplicationRecord
  belongs_to :movie
  validates :critic_name, :critic_email, :body, presence: true
end
