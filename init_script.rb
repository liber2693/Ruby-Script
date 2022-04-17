# frozen_string_literal: true

require_relative 'parse_file'
# This class is the start of the script
class InitScript
  def init
    p 'Please choose the quantity of days'
    days = gets.chomp.freeze.to_i
    p 'Please write the file name'
    filename = gets.chomp.freeze

    raise 'The parameter days must be a number between 1 and 30' if days <= 0 || days > 30
    raise "The field filename can't be empty" if filename.empty?
    raise "The file doesn't exist" unless File.file?(filename)

    begin
      ParseFile.new(days, filename).read_file
    rescue StandardError
      raise 'We have a error on parse the file'
    end
  end
end

obj_class = InitScript.new
obj_class.init
