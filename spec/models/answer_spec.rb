RSpec.describe Answer, type: :model do
  let(:answer) { FactoryBot.build(:answer) }

  it { should belong_to(:user) }
  it { should belong_to(:question) }

  it { should validate_presence_of(:body) }

  it { should validate_length_of(:body).is_at_most(65_536) }
end
