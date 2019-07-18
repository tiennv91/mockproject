class BlogHashtag < ApplicationRecord
  belongs_to :blog
  belongs_to :hashtag
end
