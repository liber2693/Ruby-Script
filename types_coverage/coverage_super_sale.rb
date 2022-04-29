# frozen_string_literal: true

# Class for Special Full Coverage
class CoverageSuperSale < Coverage

  def initialize(data)
    super(data)
  end

  def processing
    final_price = price.negative? || price.zero? ? 0 : price - 2
    final_sell_in = sell_in - 1
    "#{@type_coverage}, #{final_sell_in}, #{final_price}"
  end
end
