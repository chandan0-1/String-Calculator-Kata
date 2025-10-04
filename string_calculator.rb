class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    # Simple regex to match comma or newline
    delimiter = /,|\n/

    if numbers.start_with?("//")
      # doing this to split the delimiter and the numbers in 2 parts
      delimiter_part, numbers = numbers.split("\n", 2)
      delimiter = delimiter_part[2..]

      # numbers = numbers[4..]
    end

    # Split the numbers in an array and convert to integers
    number_array = numbers.split(delimiter).map(&:to_i)
    
    # Sum the numbers and return the total sum
    number_array.select { |n| n }.sum
  end
end


calculator = StringCalculator.new
input_list = [
  "",                # empty string
  "1",               # single number
  "1,2,3",           # multiple numbers
  "1\n2,3",          # multiple numbers with newline
  "1\n2\n3",         # multiple numbers with newline
  "//;\n1;2",        # custom single-character delimiter
]

input_list.each do |input|
  puts calculator.add(input)
end