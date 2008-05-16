class Todo < ActiveRecord::Base
  belongs_to :customer
  belongs_to :project
  belongs_to :priority
end
