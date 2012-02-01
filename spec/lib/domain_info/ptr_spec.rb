require "spec_helper"

describe DomainInfo::PTR do
  let(:ptr) { DomainInfo::PTR.new("github.com") }

  it "returns PTR record for ip associated with domain" do
    ptr.value.should == "github.com"
  end

  context "#valid?" do
    it "returns true if domain resolves to itself" do
      ptr.stub(:value).and_return("github.com")
      ptr.should be_valid
    end
  end
end