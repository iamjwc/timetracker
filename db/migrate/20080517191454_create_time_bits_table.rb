class CreateTimeBitsTable < ActiveRecord::Migration
  def self.up
    create_table "time_bits" do |t|
      t.string "description"
      t.integer "time_log_id", :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table "time_bits"
  end
end
