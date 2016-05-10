require "rails_helper"

RSpec.describe Category, type: :model do
  describe "validations" do
    it { is_expected.to have_many(:questions)}
  end
end
