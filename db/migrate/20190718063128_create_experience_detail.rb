class CreateExperienceDetail < ActiveRecord::Migration[5.2]
  def change
    create_table :experience_details do |t|
      t.string :title
      t.decimal :price_adult
      t.decimal :price_children
      t.decimal :price_infant
      t.string :duration
      t.string :age
      t.string :language
      t.belongs_to :experience, index: true
    end
  end
end
