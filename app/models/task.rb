class Task < ActiveRecord::Base
  belongs_to :project
  has_many :task_categorizations
  has_many :categories, through: :task_categorizations
  has_many :task_flags
  has_many :flags, through: :task_flags


end
