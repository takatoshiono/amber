class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.references :user, index: true
      t.integer :drinking
      t.string :memo

      t.timestamps
    end
  end
end
