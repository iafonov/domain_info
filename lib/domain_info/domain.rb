class DomainInfo::Domain
  attr_accessor :domain

  def initialize(domain)
    @domain = domain
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
end
