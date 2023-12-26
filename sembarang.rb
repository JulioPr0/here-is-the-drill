require_relative 'sapa'

class Sembarang
  def initialize
  end

  def eksekusi(obj)
    puts obj.exec
  end
end

obj_sapa1 = Sapa.new('Julio')
panggilan1 = 'Hoiluj'
obj_sapa2 = Sapa.new('THE JULLS')
panggilan2 = 'T H E'

array1 = [ [obj_sapa1, panggilan1], [obj_sapa2, panggilan2] ]

array1.each do |arr|
  puts '--------------------START--------------------'
  obj_sembarang = Sembarang.new
  obj_sembarang.eksekusi(arr[0])
  puts "--------------------panggilan dirubah--------------------"
  arr[0].panggilan = arr[1]
  obj_sembarang.eksekusi(arr[0])
  puts '--------------------END--------------------'
end
