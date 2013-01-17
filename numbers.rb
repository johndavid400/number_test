class Compute
  require 'pry'

  def initialize(input)
    input_is_square?(input.to_f) ? print_result(input) : warn_of_failure
  end

  def input_is_square?(input)
    Math.sqrt(input).to_i == Math.sqrt(input)
  end

  def warn_of_failure
    puts "The number you entered is not a perfect square, please try again."
  end

  def print_result(input)
    number = input.to_i
    sqroot = Math.sqrt(input.to_f).to_i
    sqr = sqroot
    list = (1..input.to_i).to_a

    rows = []
    sqr.times do |s|
      rows.push(sqr).push(sqr -= 1)
    end

    spiral = []
    rows.each do |row|
      row_vals = []
      row.times do
        row_vals.push(list.pop)
      end
      spiral.push(row_vals)
    end
    spiral.pop

    final_rows = []
    sqroot.times do |index|
      if index == 0
        final_rows[index] = (spiral[index])
      elsif index == (sqroot - 1)
      binding.pry
        final_rows[index] = (spiral[2])
        final_rows[index].push(spiral[1].pop)
        binding.pry
      else
        final_rows[index] = (spiral[3].pop)
      end
    end

    print final_rows
  end

end

input = ARGV[0]
Compute.new(input)

