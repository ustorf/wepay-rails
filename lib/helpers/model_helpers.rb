module WepayRails
  module Helpers
    module ModelHelpers
      def wepayable(*args)
        @params = args.last if args.last.is_a?(Hash)
        @column = args.first.to_s

        puts "*"*50
        puts @column

        eval "define_method(has_#{@column}?) {
            #{@column}.present?
        }"
      end
    end
  end
end