RSpec.describe Question, type: :model do
  let(:question) { FactoryBot.build(:question) }

  it { should belong_to(:user) }
  it { should have_many(:answers) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:body) }

  it { should validate_length_of(:title).is_at_most(255) }
  it { should validate_length_of(:body).is_at_most(65_536) }
end
