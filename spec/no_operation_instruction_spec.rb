require 'caveat/no_operation_instruction'

describe CAVEAT::NoOperationInstruction do
  it 'does not change the registers' do
    instruction = CAVEAT::NoOperationInstruction.new('whatever')

    instruction.execute.should == 'whatever'
  end
end
