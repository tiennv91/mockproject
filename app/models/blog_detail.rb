class BlogDetail < ApplicationRecord
    belongs_to :blog
    is_impressionable
    has_many :impressions, as: :impressionable

end
