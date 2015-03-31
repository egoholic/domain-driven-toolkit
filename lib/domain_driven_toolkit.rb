require 'domain_driven_toolkit/version'

module DomainDrivenToolkit
  require 'domain_driven_toolkit/application'
  require 'domain_driven_toolkit/patterns'

  class << self
    def version
      VERSION
    end

    def application
      Application
    end

    def patterns
      Patterns
    end
  end
end
