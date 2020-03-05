class Goal < ApplicationRecord
  validates :attainable, inclusion: { in: [true] }
  validates :title, presence: true
  belongs_to :user
  belongs_to :goal_category
end
