require 'domain_driven_toolkit/version'

module DomainDrivenToolkit
  require 'domain_driven_toolkit/traits'
  require 'domain_driven_toolkit/structures'
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

    def structures
      Structures
    end

    def traits
      Traits
    end
  end
end
