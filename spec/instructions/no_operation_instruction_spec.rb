require 'spec_helper'
require 'instructions/no_operation_instruction'

describe Instructions::NoOperation do
  it 'does not change the registers' do
    instruction = Instructions::NoOperation.new

    instruction.execute('whatever').should == 'whatever'
  end
end
