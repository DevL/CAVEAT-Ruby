module Registers
  class BitRegister
    def initialize(bits)
      @bits = bits
    end

    def set(value)
      @value = value
    end

    def signed
      (@value & signed_max_value) - complement
    end

    def unsigned
      @value & max_value
    end

    private

    def max_value
      2**(@bits) - 1
    end

    def signed_max_value
      complement - 1
    end

    def complement
      2**(@bits - 1)
    end
  end
end
