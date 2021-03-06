class DomainInfo::PTR < DomainInfo::Record
  def initialize(domain)
    @domain = domain
    @ptr = Resolv.getname(IPSocket::getaddress(domain))
  end

  def valid?
    value == @domain
  end

  def value
    @ptr
  end
end