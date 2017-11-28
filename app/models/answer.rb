class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  validates :body,
            presence: true
  validates :body,
            length: { maximum: 65_536 },
            allow_blank: true
end
