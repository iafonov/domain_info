class DomainInfo::Domain
  attr_accessor :domain

  def initialize(domain)
    @domain = domain
  end

  def ptr
    @ptr ||= PTR.new(domain)
  end

  def spf
    @spf ||= SPF.new(domain)
  end

  def dkim(txt_name)
    @dkim ||= DKIM.new(domain)
  end
end
