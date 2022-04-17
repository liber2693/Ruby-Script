# frozen_string_literal: true

# Class for Mega Coverage
class CoverageMega
  attr_accessor :type_coverage, :sell_in, :price

  def initialize(data)
    @type_coverage = data[0]
    @sell_in = data[1].delete(' ')
    @price = data[2].delete(' ')
  end

  def processing
    "#{@type_coverage}, #{sell_in}, #{price}"
  end
end
