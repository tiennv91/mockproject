class Blog < ApplicationRecord
  has_one :blog_detail

  belongs_to :location

  has_many :blog_hashtags
  has_many :hashtags, through: :blog_hashtags
  
  has_many :category_blogs
  has_many :categories, through: :category_blogs
  is_impressionable :counter_cache => :impressions_count
  has_many :impressions, as: :impressionable

end
