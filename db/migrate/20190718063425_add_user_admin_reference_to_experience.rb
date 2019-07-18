class AddUserAdminReferenceToExperience < ActiveRecord::Migration[5.2]
  def change
    add_reference :experiences, :admin_user
  end
end
