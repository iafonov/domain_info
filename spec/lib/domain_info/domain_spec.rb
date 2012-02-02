require "spec_helper"

describe DomainInfo::Domain do
  let (:domain) { DomainInfo::Domain.new("github.com") }

  it "has an IP address" do
    domain.ip.should_not be_nil
  end

  it "has a PTR record" do
    domain.ptr.should_not be_nil
  end

  it "has a SPF record" do
    domain.ptr.should_not be_nil
  end

  it "has a DKIM record" do
    domain.dkim("_key").should_not be_nil
  end

  it "has a default DKIM record" do
    domain.default_dkim.should_not be_nil
  end
end