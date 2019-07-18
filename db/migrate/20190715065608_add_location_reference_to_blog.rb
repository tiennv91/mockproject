class AddLocationReferenceToBlog < ActiveRecord::Migration[5.2]
  def change
    add_reference :blogs, :location
  end
end
