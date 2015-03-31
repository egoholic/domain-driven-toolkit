module DomainDrivenToolkit
  module Structures
    class Register
      attr_reader :name

      def initialize(name, items = {})
        @name = name
        @items = items
      end

      def add(name, item)
        # TODO: needs custom exception class
        raise "Item `#{name}` already registered." if has?(name)
        @items[name] = item; nil
      end

      def get(name)
        # TODO: needs custom exception class
        raise "Item `#{name}` not registered." unless has?(name)
        @items[name]
      end

      def item_names
        @items.keys
      end

      def has?(name)
        @items.has_key? name
      end
    end
  end
end
