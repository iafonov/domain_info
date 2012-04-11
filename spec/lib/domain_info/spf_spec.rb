require "spec_helper"

describe DomainInfo::SPF do
  let(:spf) { DomainInfo::SPF.new("plaintracker.com") }

  it "returns SPF record for ip associated with domain" do
    spf.value.should match /v=spf1 mx ip4:/
  end
end