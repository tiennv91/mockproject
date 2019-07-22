class AddDescriptionToBlogDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :blog_details, :description, :text
  end
end
