class HealthLog < ApplicationRecord
  belongs_to :cat

  has_many_attached :photo


  enum appetite: { good: 0, normal: 1, poor: 2, none: 3 }


  validates :appetite, presence: true
  validates :weight, numericality: { greater_than: 0 }, allow_nil: true
  validates :urine_note, presence: true, if: :urine_abnormal?
  validates :stool_note, presence: true, if: :stool_abnormal?
  validates :overgrooming_area, presence: true, if: :overgrooming?


  scope :recent, -> { order(created_at: :desc) }
end
