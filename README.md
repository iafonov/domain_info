## Domain info

[![Build Status](https://secure.travis-ci.org/iafonov/domain_info.png)](http://travis-ci.org/iafonov/domain_info)

Basic domain configuration wrapper & verifier. Allows one to verify whether domain is configured correctly for sending emails under its name. Built on top of ruby's built-in [`Resolv`](http://ruby-doc.org/stdlib-1.9.2/libdoc/resolv/rdoc/Resolv.html).

    domain = DomainInfo::Domain.new("github.com")

    # PTR record validation
    domain.ptr.value              # => "github.com"
    domain.ptr.present?           # => true
    domain.ptr.valid?             # => true, domain's ip resolves to itself

    # Extracting SPF record
    domain.spf.value              # => v=spf1 a mx include:spf.mtasv.net...
    domain.spf.present?           # => true

    # Extracting DKIM public key
    domain.dkim("_key").value     # => v=DKIM1...
    domain.dkim("_key").present?  # => true

For more advanced things I recommend to go with [dnsruby](http://rubyforge.org/projects/dnsruby).

[Igor Afonov](http://iafonov.github.com) 2012 MIT License
