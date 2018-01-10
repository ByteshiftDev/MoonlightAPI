class Beacon < ApplicationRecord
  has_many :artists
  has_one :notification
end
