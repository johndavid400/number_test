class Compute
  require 'pry'

  def initialize(input)
    @input = input.to_f
    input_is_square? ? print_result : warn_of_failure
  end

  def input_is_square?
    Math.sqrt(@input).to_i == Math.sqrt(@input)
  end

  def warn_of_failure
    print "The number you entered is not a perfect square, please try again."
  end

  def print_result
    puts @input.to_i
  end

end

input = ARGV[0]
Compute.new(input)


# run like so:
#$ ruby numbers.rb 16
