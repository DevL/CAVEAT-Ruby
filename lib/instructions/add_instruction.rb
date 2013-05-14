module Instructions
  class Add
    def execute(registers)
      registers.r2.set(registers.r0.unsigned + registers.r1.unsigned)
      registers
    end
  end
end
