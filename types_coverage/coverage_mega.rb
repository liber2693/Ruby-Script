# frozen_string_literal: true

# Class for Mega Coverage
class CoverageMega < Coverage
  def processing
    "#{@type_coverage}, #{sell_in}, #{price}"
  end
end
