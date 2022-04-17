# frozen_string_literal: true

# Class for Full Coverage
class CoverageFull
  attr_accessor :type_coverage, :sell_in, :price

  def initialize(data)
    @type_coverage = data[0]
    @sell_in = data[1].to_i
    @price = data[2].to_i
  end

  def processing
    final_price = sell_in <= 0 ? price + 2 : price + 1
    final_price = 50 if price >= 50
    final_sell_in = sell_in - 1
    "#{@type_coverage}, #{final_sell_in}, #{final_price}"
  end
end
