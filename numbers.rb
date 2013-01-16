class Compute
  require 'pry'

  def initialize(input)
    binding.pry
  end

end

input = ARGV[0]
Compute.new(input)

