require_relative "../spec_helper.rb"

describe SkatespotsController do
  def app
    described_class
  end

  describe "GET /" do
    before { get "/" }

    it "returns the proper status" do
      result = last_response.status

      expect(result).to eq 200
    end

    it "renders skatespots" do
      result = last_response.body

      expect(result).to include "<div data-skatespots="
    end
  end
end
