require 'spec_helper'

describe Registers::ByteRegister do
  describe '#set' do
    it 'stores the lower 8 bit of any value' do
      register = Registers::ByteRegister.new

      register.set 1
      register.unsigned.should == 0b00000001

      register.set 255
      register.unsigned.should == 0b11111111

      register.set 256
      register.unsigned.should == 0b00000000
    end
  end

  describe '#signed' do
    it 'returns the contents of the register as signed integer' do
      register = Registers::ByteRegister.new

      register.set 0b11111111
      register.signed.should == -1

      register.set 0b10000000
      register.signed.should == -128
    end
  end

  describe '#unsigned' do
    it 'returns the contents of the register as signed integer' do
      register = Registers::ByteRegister.new

      register.set 0b11111111

      register.unsigned.should == 255
    end
  end
end



