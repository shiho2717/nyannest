class Diary < ApplicationRecord
  belongs_to :cat
  belongs_to :user

  has_many_attached :media

  validates :content, presence: true
  validates :title, length: { maximum: 50 }, allow_blank: true

  scope :recent, -> { order(created_at: :desc) }

end
