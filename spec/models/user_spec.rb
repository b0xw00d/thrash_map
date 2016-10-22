require_relative "../spec_helper.rb"

describe User, type: :model do
  describe "validations" do
    it { should validate_presence_of(:password).on(:create) }
    it { should validate_confirmation_of(:password) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
  end
end

