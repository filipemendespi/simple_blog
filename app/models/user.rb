class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :answers
  has_many :questions

  validates :name,
            presence: true
  validates :password,
            format: {
              with: /\A(?=.*[a-zA-Z])(?=.*[0-9]).{8,}\z/,
              message: I18n.t('errors.messages.wrong_format_password')
            }, allow_blank: true
  validates :email,
            format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :name,
            length: { maximum: 255 }
end
