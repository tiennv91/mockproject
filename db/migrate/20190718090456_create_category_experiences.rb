class CreateCategoryExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :category_experiences do |t|

      t.timestamps
    end
  end
end
