module Instructions
  class Add
    def execute(registers)
      registers.r2 = registers.r0 + registers.r1
      registers
    end
  end
end
