class Hashtag < ApplicationRecord
  has_many :blog_hashtags
  has_many :blogs, through: :blog_hashtags
end
