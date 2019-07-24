class Category < ApplicationRecord
    has_many :category_blogs
    has_many :category_experiences
    has_many :blogs, through: :category_blogs
    has_many :experiences, through: :category_experiences
end
