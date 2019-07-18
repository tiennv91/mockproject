class Experience < ApplicationRecord
  has_one :experience_detail

  belongs_to :location
  
  has_many :category_blogs
  has_many :categories, through: :category_blogs
  is_impressionable :counter_cache => :impressions_count
  has_many :impressions, as: :impressionable

end
