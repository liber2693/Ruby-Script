class Coverage
  attr_accessor :type_coverage, :sell_in, :price

  def initialize(data)
    @type_coverage = data[0]
    @sell_in = data[1].to_i
    @price = data[2].to_i
  end

end