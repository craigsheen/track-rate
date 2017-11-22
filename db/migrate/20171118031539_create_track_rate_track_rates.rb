class CreateTrackRates < ActiveRecord::Migration
  def change
    create_table :track_rates do |t|
      t.string :tracking_object_type
      t.integer :tracking_object_id
      t.string :tracking_service
      t.integer :send_count, default: 0
      t.integer :open_count, default: 0
      t.integer :open_percent, default: 0
      t.timestamps
    end

    add_index :track_rate, [:tracking_object_type, :tracking_object_id, :tracking_service]
  end
end
