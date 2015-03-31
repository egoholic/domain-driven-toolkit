module DomainDrivenToolkit
  module Structures
    require 'domain_driven_toolkit/structures/register'

    class << self
      # TODO: generate class accessors automagically
      def register
        Register
      end
    end
  end
end
