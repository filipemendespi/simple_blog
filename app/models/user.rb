class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name,
            presence: true
  validates :password,
            format: {
              with: /\A(?=.*[a-zA-Z])(?=.*[0-9]).{8,}\z/,
              message: I18n.t('errors.messages.wrong_format_password')
            }, allow_blank: true
  validates :email,
            format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
