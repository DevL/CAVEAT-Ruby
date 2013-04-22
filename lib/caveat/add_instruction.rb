require 'caveat/instruction'

module CAVEAT
  class AddInstruction
    include CAVEAT::Instruction

    private

    def implementation
      registers.r2 = registers.r0 + registers.r1
    end
  end
end
