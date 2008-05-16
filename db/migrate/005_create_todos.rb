class CreateTodos < ActiveRecord::Migration
  def self.up
    create_table :todos do |t|
      t.text "description"
      t.integer "priority"
      t.boolean "completed"

      t.integer "customer_id", :null => false
      t.integer "project_id", :null => true

      t.timestamps
    end
  end

  def self.down
    drop_table :todos
  end
end
