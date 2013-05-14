require 'spec_helper'

describe Instructions::Add do
  it "adds the unsigned values of two registers and stores the result in a third" do
    registers = FakeRegisters.new(r0: 1, r1: 2)
    expected = 1 + 2

    instruction = Instructions::Add.new
    result = instruction.execute(registers)

    result.r2.should == expected
  end
end

