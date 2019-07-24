class Experience < ApplicationRecord
  has_one :experience_detail

  belongs_to :location
  paginates_per 6
  has_many :category_experiences
  has_many :categories, through: :category_experiences
  has_one_attached :image

  # is_impressionable :counter_cache => :impressions_count
  # has_many :impressions, as: :impressionable

end
