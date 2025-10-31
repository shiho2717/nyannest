class Meal < ApplicationRecord
  belongs_to :cat

  has_many_attached :media  # 画像・動画を複数アップロード可

  validates :food_name, presence: true
  validates :feeding_time, presence: true
  validates :feeding_amount, :eaten_amount,
            numericality: { greater_than_or_equal_to: 0 },
            allow_nil: true

  # 食べた割合（%）を計算するメソッド
  def eating_ratio
    return nil if feeding_amount.nil? || feeding_amount.zero?
    (eaten_amount / feeding_amount * 100).round(1)
  end
end
