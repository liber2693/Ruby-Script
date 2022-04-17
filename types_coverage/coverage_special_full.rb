# frozen_string_literal: true

# Class for Special Full Coverage
class CoverageSpecialFull
  attr_accessor :type_coverage, :sell_in, :price

  def initialize(data)
    @type_coverage = data[0]
    @sell_in = data[1].to_i
    @price = data[2].to_i
  end

  def processing
    final_price = price + 1 if sell_in > 10
    final_price = price + 2 if sell_in.between?(5, 10)
    final_price = price + 3 if sell_in.between?(0, 5)
    final_price = 50 if price >= 49
    # final_price = 50 if final_price.present? && final_price >= 50
    final_price = 0 if sell_in <= 0
    final_sell_in = sell_in - 1
    "#{@type_coverage}, #{final_sell_in}, #{final_price}"
  end
end
