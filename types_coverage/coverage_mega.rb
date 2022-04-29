# frozen_string_literal: true

# Class for Mega Coverage
class CoverageMega < Coverage

  def initialize(data)
    super(data)
  end

  def processing
    "#{@type_coverage}, #{sell_in}, #{price}"
  end
end
