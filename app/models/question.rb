class Question < ApplicationRecord
  belongs_to :user

  has_many :answers

  validates :body,
            :title,
            presence: true
  validates :title,
            length: { maximum: 255 },
            allow_blank: true
  validates :body,
            length: { maximum: 65_536 },
            allow_blank: true
end
