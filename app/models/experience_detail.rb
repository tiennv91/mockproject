class ExperienceDetail < ApplicationRecord
  belongs_to :experience
  is_impressionable
  has_many :impressions, as: :impressionable

end
