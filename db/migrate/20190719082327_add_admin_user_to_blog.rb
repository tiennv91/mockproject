class AddAdminUserToBlog < ActiveRecord::Migration[5.2]
  def change
    add_reference :blogs, :admin_user, foreign_key: true
  end
end
