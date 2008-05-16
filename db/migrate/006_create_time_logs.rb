class CreateTimeLogs < ActiveRecord::Migration
  def self.up
    create_table :time_logs do |t|
      t.datetime "started_at"
      t.datetime "ended_at"

      t.text "description"

      t.integer "project_id"
    end
  end

  def self.down
    drop_table :time_logs
  end
end
