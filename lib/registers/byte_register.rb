require 'registers/bit_register'

module Registers
  class ByteRegister < BitRegister
    def initialize
      super(8)
    end
  end
end