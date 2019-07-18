class AddAddminUserReferenceToBlog < ActiveRecord::Migration[5.2]
  def change
    add_reference :blogs, :admin_user
  end
end
