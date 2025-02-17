class Project < ApplicationRecord
  belongs_to :user
  has_many :conversation_histories, dependent: :destroy

  enum status: { pending: 'pending', in_progress: 'in_progress', completed: 'completed' }

  validates :title, presence: true, uniqueness: { case_sensitive: false, message: "already exists" }
  validates :status, presence: true, inclusion: { in: statuses.keys }
end
