class RemoveAdminUserIdFromExperience < ActiveRecord::Migration[5.2]
  def change
    remove_reference :experiences, :admin_user, foreign_key: true
    add_reference :experiences, :admin_user, foreign_key: true
  end
end
