class CreateCommitments < ActiveRecord::Migration
  def change
    create_table :commitments do |t|
      t.integer :attendee_id
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
