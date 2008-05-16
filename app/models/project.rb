class Project < ActiveRecord::Base
  belongs_to :customer
  has_many :time_logs
  has_many :todos
end
