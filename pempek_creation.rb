class PempekCreation
  def initialize(bahan, alatmasak, bumbu)
    @bahan = bahan
    @alatmasak = alatmasak
    @bumbu = bumbu
  end

  def eksekusi
    pisahin_bahan_baku
    siapin_bahan
    masak
  end

  def pisahin_bahan_baku
  end

  def masak
  end

  def siapin_bahan
  end
end

class PempekVegetarian < PempekCreation
  def masak
    puts "Memasak pempek vegetarian..."
  end
end

bahan = [1, 3, 4]
alatmasak = "Panci"
bumbu = "Garam"

pempek_vegetarian = PempekVegetarian.new(bahan, alatmasak, bumbu)
pempek_vegetarian.eksekusi
