class CreateBubbles < ActiveRecord::Migration
  def change
    create_table :bubbles do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
