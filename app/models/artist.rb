class Artist < ApplicationRecord
  has_many :artworks
  has_attached_file :avatar,
    :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  attr_accessor :delete_avatar
  before_validation { self.avatar.clear if self.delete_avatar == '1' }
end
