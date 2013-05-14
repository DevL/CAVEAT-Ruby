require 'caveat'

class FakeRegisters
  attr_accessor :r0, :r1, :r2, :r3

  def initialize(r0: 0, r1: 0, r2: 0, r3: 0)
    @r0 = r0
    @r1 = r1
    @r2 = r2
    @r3 = r3
  end
end
