# frozen_string_literal: true

# Class for Low Coverage
class CoverageLow < Coverage
  def processing
    final_price = sell_in <= 0 ? 0 : price - 1
    final_sell_in = sell_in - 1
    "#{@type_coverage}, #{final_sell_in}, #{final_price}"
  end
end
