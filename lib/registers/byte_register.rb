module Registers
  class ByteRegister
    def set(value)
      @value = value
    end

    def signed
      (@value & signed_mask) - 128
    end

    def unsigned
      @value & mask
    end

    private

    def mask
      0b11111111
    end

    def signed_mask
      0b01111111
    end
  end
end
