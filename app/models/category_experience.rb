class CategoryExperience < ApplicationRecord
  belongs_to :experience
  belongs_to :category
end
