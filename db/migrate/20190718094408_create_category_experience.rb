class CreateCategoryExperience < ActiveRecord::Migration[5.2]
  def change
    create_table :category_experiences do |t|
      t.belongs_to :category, foreign_key: true
      t.belongs_to :experience, foreign_key: true
    end
  end
end
