class TaskFlag < ActiveRecord::Base
  belongs_to :flag
  belongs_to :task
end
