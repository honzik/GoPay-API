# -*- encoding: utf-8 -*-
# stub: gopay 0.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "gopay"
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["papricek"]
  s.date = "2014-02-26"
  s.description = "GoPay is a library making it easy to access GoPay http://www.gopay.cz paygate from Ruby. It offers some basic wrapper around soap calls in the form of AR-like models. Its autoconfigurable from Rails."
  s.email = ["patrikjira@gmail.com"]
  s.files = [".gitignore", ".rvmrc", "Gemfile", "README.textile", "Rakefile", "config/config.yml", "config/country_codes.yml", "gopay.gemspec", "init.rb", "lib/gopay.rb", "lib/gopay/config.rb", "lib/gopay/crypt.rb", "lib/gopay/models/buyer_payment.rb", "lib/gopay/models/customer_eshop_payment.rb", "lib/gopay/models/eshop_payment.rb", "lib/gopay/models/payment.rb", "lib/gopay/models/payment_identity.rb", "lib/gopay/models/payment_method.rb", "lib/gopay/railtie.rb", "lib/gopay/version.rb", "test/buyer_test_config.yml", "test/config_test.rb", "test/crypt_test.rb", "test/eshop_test_config.yml", "test/models_test.rb", "test/test_helper.rb"]
  s.homepage = "http://gopay.defactory.net"
  s.require_paths = ["lib"]
  s.rubyforge_project = "gopay"
  s.rubygems_version = "2.1.9"
  s.summary = "A little gem making integration of GoPay easy"
  s.test_files = ["test/buyer_test_config.yml", "test/config_test.rb", "test/crypt_test.rb", "test/eshop_test_config.yml", "test/models_test.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<savon>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<savon>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<savon>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end
