require 'pry'
class Sapa

  attr_reader :nama
  attr_accessor :panggilan

  def initialize(nama)
    @nama = nama
    @panggilan = 'Julls'
  end

  def exec
    'Hallo #{nama}, nama panggilan kamu #{panggilan} ya?'
  end

end

obj1 = Sapa.new('Julio')
binding.pry
puts obj1.eksekusi
