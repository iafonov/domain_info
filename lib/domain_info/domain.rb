class DomainInfo::Domain
  attr_accessor :domain

  def initialize(domain)
    @domain = domain
  end

  def ip
    @ip ||= TCPSocket::getaddress(domain)
  end

  def ptr
    @ptr ||= DomainInfo::PTR.new(domain)
  end

  def spf
    @spf ||= DomainInfo::SPF.new(domain)
  end

  def dkim(txt_name)
    @dkim ||= DomainInfo::DKIM.new(domain, txt_name)
  end

  def default_dkim
    @default_dkim_dkim ||= DomainInfo::DKIM.new(domain, "#{domain}._domainkey")
  end
end
