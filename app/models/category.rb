class Category < ActiveRecord::Base
  has_many :task_categorizations
  has_many :tasks, through: :task_categorizations
end
