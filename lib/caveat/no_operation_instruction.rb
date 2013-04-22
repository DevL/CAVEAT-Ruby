require 'caveat/instruction'

module CAVEAT
  class NoOperationInstruction
    include Instruction

    private

    def implementation
      # no operation
    end
  end
end
