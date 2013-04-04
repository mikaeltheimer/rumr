class CreateBubblings < ActiveRecord::Migration
  def change
    create_table :bubblings do |t|
      t.belongs_to :bubble
      t.belongs_to :rumor

      t.timestamps
    end
    add_index :bubblings, :bubble_id
    add_index :bubblings, :rumor_id
  end
end
