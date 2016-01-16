require 'rails_helper'

describe User do
  describe "#admin?" do
    context "user is an admin" do
      let(:user) { create(:admin) }
      it 'return true' do
        expect(user.admin?).to eq(true)
      end
    end

    context "user is not an admin" do
      let(:user) { create(:user) }
      it "returns false" do
        expect(user.admin?).to eq(false)
      end
    end
  end
end
