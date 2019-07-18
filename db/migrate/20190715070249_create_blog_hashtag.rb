class CreateBlogHashtag < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_hashtags do |t|
      t.belongs_to :blog, index: true
      t.belongs_to :hashtag, index: true
    end
  end
end
