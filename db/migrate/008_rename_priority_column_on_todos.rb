class RenamePriorityColumnOnTodos < ActiveRecord::Migration
  def self.up
    rename_column "todos", "priority", "priority_id"
  end

  def self.down
    rename_column "todos", "priority_id", "priority"
  end
end
