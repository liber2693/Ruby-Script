Dir[File.join(__dir__, '../types_coverage/*.rb')].sort.each do |file|
  require file
end
require_relative '../parse_file'

describe 'CoverageLow' do
  it 'Processing' do
    coverage_low = CoverageLow.new(["Low Coverage", " 5", " 7"])
    expect(coverage_low.processing).to eq("Low Coverage, 4, 6")
  end
end

describe 'CoverageMedium' do
  it 'Processing' do
    coverage_medium = CoverageMedium.new(["Medium Coverage", " 10", "20"])
    expect(coverage_medium.processing).to eq("Medium Coverage, 9, 19")
  end
end

describe 'CoverageFull' do
  it 'Processing' do
    coverage_full = CoverageFull.new(["Full Coverage", " 2", " 0"])
    expect(coverage_full.processing).to eq("Full Coverage, 1, 1")
  end
end

describe 'CoverageMega' do
  it 'Processing' do
    coverage_mega = CoverageMega.new(["Mega Coverage", " 0", " 80"])
    expect(coverage_mega.processing).to eq("Mega Coverage, 0, 80")
  end
end

describe 'CoverageSpecialFull' do
  it 'Processing' do
    coverage_special_full = CoverageSpecialFull.new(["Special Full Coverage", " 15", " 20"])
    expect(coverage_special_full.processing).to eq("Special Full Coverage, 14, 21")
  end
end

describe 'CoverageSuperSale' do
  it 'Processing' do
    coverage_super_sale = CoverageSuperSale.new(["Super Sale Coverage"," 3"," 6"])
    expect(coverage_super_sale.processing).to eq("Super Sale Coverage, 2, 4")
  end
end