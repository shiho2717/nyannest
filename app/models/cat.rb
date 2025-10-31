class Cat < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :diaries, dependent: :destroy
  has_many :visit_records, dependent: :destroy
  has_many :preferences, dependent: :destroy

  enum sex: [:male, :female, :unknown]
end
