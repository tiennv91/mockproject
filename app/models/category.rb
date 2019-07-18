class Category < ApplicationRecord
    has_many :category_blogs
    has_many :blogs, through: :category_blogs
end
