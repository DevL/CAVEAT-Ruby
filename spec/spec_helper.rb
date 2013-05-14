require 'caveat'

class FakeRegisters
  attr_accessor :r0, :r1, :r2, :r3

  def initialize(r0: 0, r1: 0, r2: 0, r3: 0, bits: 8)
    @r0 = Registers::BitRegister.new(bits, initial_value: r0)
    @r1 = Registers::BitRegister.new(bits, initial_value: r1)
    @r2 = Registers::BitRegister.new(bits, initial_value: r2)
    @r3 = Registers::BitRegister.new(bits, initial_value: r3)
  end
end
