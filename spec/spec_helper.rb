require 'caveat'

class FakeRegisters
  attr_accessor :r0, :r1, :r2, :r3

  def initialize(r0: 0, r1: 0, r2: 0, r3: 0)
    @r0 = FakeRegister.new(r0)
    @r1 = FakeRegister.new(r1)
    @r2 = FakeRegister.new(r2)
    @r3 = FakeRegister.new(r3)
  end

  private

  class FakeRegister
    def initialize(value)
      @value = value
    end

    def unsigned
      @value
    end
  end
end
