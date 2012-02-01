require 'domain_info/util/dns_records'

class DomainInfo::SPF
  def initialize(domain)
    @domain = domain
    @spf = DomainInfo::DNSRecords.new(domain).detect{|txt_record| txt_record.start_with?("v=spf1")}
  end

  def value
    @spf
  end
end