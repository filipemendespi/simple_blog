RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build(:user) }

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:password) }

  it { should validate_length_of(:password).is_at_least(6).is_at_most(20) }

  context 'when the user is invalid because' do
    subject { user }
    it { should validate_uniqueness_of(:email).case_insensitive }

    it 'the password does not have the minimum number of catechters' do
      user_obj = user
      user_obj.password = Faker::Internet.password(1, 5)
      user_obj.valid?

      expect(user_obj.errors[:password]).to include(
        I18n.t('errors.messages.too_short.other', count: 6)
      )
    end

    it 'the password does not have the maximum number of catechters' do
      user_obj = user
      user_obj.password = Faker::Internet.password(30, 50)
      user_obj.valid?

      expect(user_obj.errors[:password]).to include(
        I18n.t('errors.messages.too_long.other', count: 20)
      )
    end

    it 'the password does not have letters and numbers' do
      user_obj = user
      user_obj.password = Faker::Number.number(10)
      user_obj.valid?

      expect(user_obj.errors[:password]).to include(
        I18n.t('errors.messages.wrong_format_password')
      )
    end

    it 'the email is not in the correct format' do
      user_obj = user
      user_obj.email = Faker::Internet.user_name
      user_obj.valid?

      expect(user_obj.errors[:email]).to include(
        I18n.t('errors.messages.invalid')
      )
    end
  end
end
