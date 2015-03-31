module DomainDrivenToolkit
  module Patterns
    require 'domain_driven_toolkit/patterns/value'
    require 'domain_driven_toolkit/patterns/entity'
    require 'domain_driven_toolkit/patterns/service'
    require 'domain_driven_toolkit/patterns/factory'
    require 'domain_driven_toolkit/patterns/repository'

    class << self
      # TODO: generate class accessors automagically
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
end
