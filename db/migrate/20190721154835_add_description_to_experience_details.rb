class AddDescriptionToExperienceDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :experience_details, :description, :text
  end
end
