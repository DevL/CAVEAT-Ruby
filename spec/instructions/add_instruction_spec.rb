require 'spec_helper'
require 'instructions/add_instruction'

# add r0, r1, r2 => r2 = r0 + r1
describe Instructions::Add do
  FakeRegisters = Struct.new(:r0, :r1, :r2)

  it 'adds two registers and stores the result in a third' do
    registers = FakeRegisters.new(1, 2, 0)
    expected = 1 + 2
    instruction = Instructions::Add.new

    result = instruction.execute(registers)

    result.r2.should == expected
  end
end
