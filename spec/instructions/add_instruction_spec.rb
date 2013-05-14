require 'spec_helper'

describe CAVEAT::AddInstruction do
  it 'adds two registers and stores the result in a third' do
    registers = FakeRegisters.new(r0: 1, r1: 2)
    expected = 1 + 2

    instruction = CAVEAT::AddInstruction.new(registers)
    result = instruction.execute

    result.r2.should == expected
  end
end
