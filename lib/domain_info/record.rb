class DomainInfo::Record
  def present?
    !value.nil?
  end
end