require 'domain_driven_toolkit/version'

module DomainDrivenToolkit
  require 'domain_driven_toolkit/application'
  require 'domain_driven_toolkit/value'
  require 'domain_driven_toolkit/entity'
  require 'domain_driven_toolkit/service'
  require 'domain_driven_toolkit/factory'
  require 'domain_driven_toolkit/repository'

  class << self
    def version
      VERSION
    end

    def application
      Application
    end

    def value
      Value
    end

    def entity
      Entity
    end

    def service
      Service
    end

    def factory
      Factory
    end

    def repository
      Repository
    end
  end

end
