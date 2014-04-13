require_relative '../spec_helper'

describe ::LeagueOfLegends::Request::Base do

  let(:api) { ::LeagueOfLegends::Api.new TEST_API_KEY }

  it "exposes methods to it's children" do
    class ReqTest < described_class
      def self.version; 'xx'; end
      def self.dto_class; ReqTest; end
    end
    req_test = ReqTest.new api

    expect(ReqTest.respond_to? :default_options).to be_true
    expect(ReqTest.respond_to? :dto_class).to be_true
    expect(ReqTest.respond_to? :version).to be_true
    expect(req_test.respond_to? :options).to be_true
    expect(req_test.respond_to? :region).to be_true
    expect(req_test.respond_to? :api_key).to be_true
    expect(req_test.respond_to? :response).to be_true

    expect(req_test.respond_to? :url).to be_false
    expect(req_test.respond_to? :send_request).to be_false
  end

end
