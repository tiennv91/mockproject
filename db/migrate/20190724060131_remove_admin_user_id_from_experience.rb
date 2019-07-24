class RemoveAdminUserIdFromExperience < ActiveRecord::Migration[5.2]
  def change
    remove_column :experiences, :admin_user_id
  end
end
