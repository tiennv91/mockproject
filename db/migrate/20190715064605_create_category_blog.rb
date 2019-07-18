class CreateCategoryBlog < ActiveRecord::Migration[5.2]
  def change
    create_table :category_blogs do |t|
      t.belongs_to :blog, index: true
      t.belongs_to :category, index: true
    end
  end
end
