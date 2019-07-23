class AddTimestampsToExperienceDetail < ActiveRecord::Migration[5.2]
  def change
    add_column :experience_details, :created_at, :datetime
    add_column :experience_details, :updated_at, :datetime
  end
end
