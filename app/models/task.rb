class Task < ApplicationRecord
  belongs_to :project
  validates :title, presence: true
  validates :status, presence: true
  enum status: { todo: 0, doing: 1, done: 2 }
end
