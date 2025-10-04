class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = ','
    puts "numbers: #{numbers}"
    number_array = numbers.split(delimiter).map(&:to_i)
    
    number_array.select { |n| n }.sum
  end
end


calculator = StringCalculator.new
puts calculator.add("")
puts calculator.add("1")
puts calculator.add("1,2,3")