class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :profile_image
  has_many :cats, dependent: :destroy          
  has_many :diaries, dependent: :destroy       
  has_many :visit_records, dependent: :destroy
end
