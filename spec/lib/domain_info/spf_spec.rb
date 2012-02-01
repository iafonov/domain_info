require "spec_helper"

describe DomainInfo::SPF do
  let(:spf) { DomainInfo::SPF.new("plaintracker.com") }

  it "returns SPF record for ip associated with domain" do
    spf.value.should == "v=spf1 mx ip4:178.63.56.8 -all"
  end
end