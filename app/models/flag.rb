class Flag < ActiveRecord::Base
  has_many :task_flags
  has_many :tasks, through: :task_flags
end
