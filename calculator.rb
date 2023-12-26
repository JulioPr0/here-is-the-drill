class Calculator
  PI = 3.14

  def initialize(a, b)
    @a = a
    @b = b
  end

  def calculate(type)
    case type
    when 'add'
      add
    when 'subtract'
      subtract
    else
      'Invalid operation type'
    end
  end

  def add
    @a + @b
  end

  def subtract
    return 'a harus lebih besar dari b' if @a < @b

    @a - @b
  end

  def self.minus_sign
    '-'
  end
end

calculator = Calculator.new(4, 3)

puts "Hasil penjumlahan: #{calculator.add}"
puts "Hasil pengurangan: #{calculator.subtract}"

puts "Hasil operasi tambah: #{calculator.calculate('add')}"
puts "Hasil operasi kurang: #{calculator.calculate('subtract')}"

puts "Tanda minus: #{Calculator.minus_sign}"
