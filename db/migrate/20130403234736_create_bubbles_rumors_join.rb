class CreateBubblesRumorsJoin < ActiveRecord::Migration
  def up
  	create_table :bubbles_rumors, id: false do |t|
  		t.column :bubble_id, :integer
  		t.column :rumor_id, :integer
  	end

  	add_index :bubbles_rumors, :bubble_id
  	add_index :bubbles_rumors, :rumor_id
  end

  def down
  	drop_table :bubbles_rumors
  end
end
