class AddImpressionsCountToBlog < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :impressions_count, :int, :default => 0
  end
end
