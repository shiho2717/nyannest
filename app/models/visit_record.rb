class VisitRecord < ApplicationRecord
  belongs_to :cat
  belongs_to :user

    has_one_attached :photo

  enum :reason, {
    routine: 0,       # 定期健診
    vaccination: 1,   # ワクチン接種
    illness: 2,       # 体調不良
    injury: 3,        # ケガ
    surgery: 4,       # 手術・処置
    follow_up: 5,     # 再診・経過観察
    test: 6,          # 検査
    other: 7          # その他
  }
end
