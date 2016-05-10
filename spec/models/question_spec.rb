RSpec.describe Question, type: :model do
  describe "validations" do
    it { is_expected.to belong_to(:category)}
  end
end
