module CAVEAT
  module Instruction
    def initialize(registers)
      @registers = registers
    end

    def execute
      implementation
      registers
    end

    private

    attr_accessor :registers

    def implementation
      raise NotImplementedError.new 'Instruction not implemented.'
    end
  end
end
