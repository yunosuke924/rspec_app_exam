class Task < ApplicationRecord
  belongs_to :project
  validates :title, presence: true
  validates :status, presence: true
  enum status: { todo: 0, doing: 1, done: 2 }

  after_update :insert_complete_date

  def insert_complete_date
    update(completion_date: Time.current) if done? && completion_date.blank?
  end
end
