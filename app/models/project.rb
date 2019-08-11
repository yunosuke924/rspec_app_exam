class Project < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :status, presence: true
  has_many :tasks, dependent: :destroy
  enum status: { todo: 0, doing: 1, done: 2 }
end
