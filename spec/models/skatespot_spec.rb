require_relative "../spec_helper.rb"

describe Skatespot, type: :model do
  describe "validations" do
    [:title, :address, :city, :state, :zip].each do |attribute|
      it { should validate_presence_of attribute }
    end
  end

  describe "#full_street_address" do
    let(:subject) do
      Skatespot.new(title: "Home Base",
                    address: "6141 W Berenice Ave",
                    city: "Chicago",
                    state: "Illinois",
                    zip: "60634")
    end

    it "returns an address string" do
      result = subject.full_street_address

      expect(result).to eq "6141 W Berenice Ave, Chicago, Illinois, 60634"
    end
  end
end
