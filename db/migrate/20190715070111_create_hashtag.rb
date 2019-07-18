class CreateHashtag < ActiveRecord::Migration[5.2]
  def change
    create_table :hashtags do |t|
      t.string :tag_name
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
