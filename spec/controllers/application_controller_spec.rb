require_relative "../spec_helper.rb"

describe ApplicationController do
  include Rack::Test::Methods

  def app
    described_class
  end

  describe "GET /" do
    before { get "/" }

    it "redirects successfully" do
      result = last_response.status

      expect(result).to eq 302
    end

    it "redirects to the proper url" do
      follow_redirect!

      result = last_request.url

      expect(result).to eq("http://example.org/skatespots")
    end
  end
end
