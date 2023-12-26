require 'pry'

class A
  def hello()
    puts "hello world!"
  end
end

a = A.new

x = 10

binding.pry

puts "program resumes here. Value of x is: #{x}."
