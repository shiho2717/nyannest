class Preference < ApplicationRecord
  belongs_to :cat

    enum :category, {
    food: 0,
    toy: 1,
    sound: 2,
    person: 3,
    place: 4,
    smell: 5,
    other: 6
  }

  enum :reaction, {
    like: 0,
    dislike: 1
  }
end
