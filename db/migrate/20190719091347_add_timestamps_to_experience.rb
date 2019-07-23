class AddTimestampsToExperience < ActiveRecord::Migration[5.2]
  def change
    add_column :experiences, :created_at, :datetime, null: false
    add_column :experiences, :updated_at, :datetime, null: false
  end
end
