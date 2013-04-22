require 'caveat/add_instruction'

# add r0, r1, r2 => r2 = r0 + r1
describe CAVEAT::AddInstruction do
  Registers = Struct.new(:r0, :r1, :r2)

  it 'adds two registers and stores the result in a third' do
    registers = Registers.new(1, 2, 0)
    expected = 1 + 2

    instruction = CAVEAT::AddInstruction.new(registers)
    result = instruction.execute

    result.r2.should == expected
  end
end
