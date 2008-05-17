class AddCustomerIdToTimeLogs < ActiveRecord::Migration
  def self.up
    add_column :time_logs, :customer_id, :integer
  end

  def self.down
    remove_column :time_logs, :customer_id
  end
end
