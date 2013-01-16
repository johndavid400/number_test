class Compute
  require 'pry'

  def initialize(input)
    @input = input.to_f
    if input_is_square?
      puts "Indeed"
    else
      puts "Abysmal!"
    end
  end

  def input_is_square?
    Math.sqrt(@input).to_i == Math.sqrt(@input)
  end

end

input = ARGV[0]
Compute.new(input)

