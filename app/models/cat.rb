class Cat < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  enum sex: [:male, :female, :unknown]
end
