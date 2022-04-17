# frozen_string_literal: true

Dir[File.join(__dir__, '/types_coverage/*.rb')].sort.each do |file|
  require file
end
require 'byebug'
require 'active_support'
require 'active_support/core_ext'
require 'awesome_print'

# The method of this class solve the Parse for the file
class ParseFile
  def initialize(days, filename)
    @days = days
    @filename = filename
  end

  def read_file
    file = File.read(@filename, mode: 'r')
    lines = file.split("\n")
    total_data = build_output(lines, @days)
    format_txt_output(total_data)
  end

  def build_output(partial_data, days)
    processed_data = []
    processed_data << partial_data
    (1..days).each do |_a|
      processed_data << parse_last_data(processed_data.last)
    end
    processed_data
  end

  def parse_last_data(last_data)
    processing_data = []
    last_data.each do |line|
      data = line.split(',')
      raise "Error, the price on #{data[0]} can't be a value negative" if data[2].to_i.negative?

      case data[0]
      when 'Low Coverage'
        processing_data << CoverageLow.new(data).processing
      when 'Medium Coverage'
        processing_data << CoverageMedium.new(data).processing
      when 'Full Coverage'
        processing_data << CoverageFull.new(data).processing
      when 'Special Full Coverage'
        processing_data << CoverageSpecialFull.new(data).processing
      when 'Mega Coverage'
        processing_data << CoverageMega.new(data).processing
      when 'Super Sale'
        processing_data << CoverageSuperSale.new(data).processing
      end
    end
    processing_data
  end

  def format_txt_output(data)
    File.open('tmp/final_output.txt', 'w') do |file_txt|
      data.each_with_index do |a, index|
        file_txt.write("---------- day #{index}----------")
        file_txt.write("\n")
        file_txt.write("name sell_in price")
        file_txt.write("\n")
        file_txt.write(a.join("\n"))
        file_txt.write("\n")
      end
      file_txt.close
    end
  end
end
