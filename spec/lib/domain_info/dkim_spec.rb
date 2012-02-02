require "spec_helper"

describe DomainInfo::DKIM do
  let(:dkim) { DomainInfo::DKIM.new("plaintracker.com", "plaintracker.com._domainkey") }

  it "returns DKIM record for ip associated with domain" do
    dkim.value.should match("v=DKIM1")
  end
end