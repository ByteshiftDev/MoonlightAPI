class Artwork < ApplicationRecord
  belongs_to :artist
  has_attached_file :photo,
    :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" }
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  attr_accessor :delete_photo
  before_validation { self.photo.clear if self.delete_photo == '1' }

  scope :search, -> (input) do
    Artwork.where(artist_id: "#{input}")
  end
end
