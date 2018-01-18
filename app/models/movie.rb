class Movie < ApplicationRecord
  has_attached_file :image, styles: { medium: '900x900>', thumb: '200x200>' }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :title, :description, presence: true
end
