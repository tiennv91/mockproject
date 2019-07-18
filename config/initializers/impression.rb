# Use this hook to configure impressionist parameters
#Impressionist.setup do |config|
  # Define ORM. Could be :active_record (default), :mongo_mapper or :mongoid
  # config.orm = :active_record
#end
class Impression < ActiveRecord::Base
  belongs_to :impressionable, polymorphic: true, counter_cache: :impressions_count
end


