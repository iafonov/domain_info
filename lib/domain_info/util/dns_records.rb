class DomainInfo::DNSRecords
  include Enumerable

  def initialize(domain)
    @domain = domain
  end

  def each
    Resolv::DNS.open do |dns|
      dns.each_resource(@domain, Resolv::DNS::Resource::IN::TXT) do |dns_record|
        dns_record.strings.each{ |dns_string| yield dns_string }
      end
    end
  end
end
