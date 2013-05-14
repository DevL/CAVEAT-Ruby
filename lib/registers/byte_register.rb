module Registers
  class ByteRegister < BitRegister
    def initialize(initial_value: 0)
      super(8, initial_value: initial_value)
    end
  end
end
