class CreateLineItems < ActiveRecord::Migration
  def self.up
    create_table :line_items do |t|
      t.float :hours
      t.float :rate
      t.string :description
      t.integer :invoice_id

      t.timestamps
    end
  end

  def self.down
    drop_table :line_items
  end
end
