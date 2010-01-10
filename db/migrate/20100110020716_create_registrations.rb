class CreateRegistrations < ActiveRecord::Migration
  def self.up
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.string :organisation
      t.string :os
      t.integer :event_id
      t.text :comment
      t.integer :commitment_strength
      t.timestamps
    end
  end

  def self.down
    drop_table :registrations
  end
end
