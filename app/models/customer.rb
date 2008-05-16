class Customer < ActiveRecord::Base
  has_many :invoices
  has_many :projects
  has_many :time_logs
  has_many :todos
end
