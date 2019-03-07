require_relative 'builder/version'
require_relative 'builder/cpus'
require_relative 'builder/drive'
require_relative 'builder/motherboard'
require_relative 'builder/computer'
require_relative 'builder/computer_builder'

module Design
  module Patterns
    module Builder
      class Error < StandardError; end
      # Your code goes here...
    end
  end
end
