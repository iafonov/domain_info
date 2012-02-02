require 'domain_info/util/dns_records'

class DomainInfo::DKIM < DomainInfo::Record
  def initialize(domain, txt_name)
    @dkim = extract_dkim(domain, txt_name)
  end

  def value
    @dkim
  end

private
  def extract_dkim(domain, txt_name)
    DomainInfo::DNSRecords.new("#{txt_name}.#{domain}").detect{|txt_record| txt_record.start_with?("v=DKIM")}
  end
end