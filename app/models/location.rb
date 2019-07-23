class Location < ApplicationRecord
  has_many :blogs
  has_many :experiences
end
