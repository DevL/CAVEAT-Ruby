require 'spec_helper'

describe Instructions::NoOperation do
  it 'does not change the registers' do
    instruction = Instructions::NoOperation.new

    instruction.execute('whatever').should == 'whatever'
  end
end
