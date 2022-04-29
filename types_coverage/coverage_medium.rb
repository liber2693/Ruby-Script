# frozen_string_literal: true

# Class for Medium Coverage
class CoverageMedium < Coverage

  def initialize(data)
    super(data)
  end

  def processing
    final_price = sell_in <= 0 ? price - 2 : price - 1
    final_price = 0 if price.zero?
    final_sell_in = sell_in - 1
    "#{@type_coverage}, #{final_sell_in}, #{final_price}"
  end
end
