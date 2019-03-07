module Design
  module Patterns
    module Builder
      class Computer
        attr_accessor :display, :motherboard, :drives

        def initialize(display = :crt, motherboard = Motherboard.new, drives = [])
          @display = display
          @motherboard = motherboard
          @drives = drives
        end
      end
    end
  end
end
