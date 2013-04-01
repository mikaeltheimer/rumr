class AddBubbleIdToRumor < ActiveRecord::Migration
  def change
    add_column :rumors, :bubble_id, :integer
  end
  add_index :rumors, :bubble_id
end
