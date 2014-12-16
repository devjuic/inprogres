class Task < ActiveRecord::Base
  belongs_to :project
  has_many :task_categorizations
  has_many :categories, through: :task_categorizations
  has_many :task_flags
  has_many :flags, through: :task_flags

  before_create :initialize_status

  scope :inprogress, -> { where(status: "INPROGRESS") }
  scope :notstarted, -> { where(status: "UNSTARTED") }

  def initialize_status
    self.status = "UNSTARTED"
  end

end
