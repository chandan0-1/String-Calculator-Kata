class StringCalculator
  # Simple regex to match comma or newline
  def initialize
    @delimiter_string = ",|\n"
    @delimiter = Regexp.new(@delimiter_string)
  end

  
  # Method to construct the delimiter regex string
  def extract_delimiter(delimiter_part)
    delimiter_part = delimiter_part.gsub("//", "") # removing the // part

    # Case : "//;\n1;2" -> Delimiter part //; Single character delimiter
    return delimiter_part unless delimiter_part.start_with?("[")

    # Case : "//[*][%]\n1*2%3" -> Delimiter part //[*][%]
    delimiter_part = delimiter_part[1..-2] # removing the first [ and last ] part
    delimiter_part = delimiter_part.split("][") # splitting by delimiter part ][
    delimiter_part = delimiter_part.map { |d| Regexp.escape(d)}
    delimiter_part.join("|")
  end


  # Update the delimiter by appending new delimiter part
  def update_delimiter(new_delimiter_part)
    return if new_delimiter_part.empty?

    delimiters = @delimiter_string + '|' + new_delimiter_part
    # Updating the delimiter by appending the new delimiter part
    @delimiter = Regexp.new(delimiters)
  end

  # ------------------- Main Method -------------------
  def add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      # Splitting the delimiter and the numbers in 2 parts
      delimiter_part, numbers = numbers.split("\n", 2)

      # Extracting the delimiter part and updating the delimiter
      delimiter_part = extract_delimiter(delimiter_part)
      update_delimiter(delimiter_part)
    end

    # Splitting the numbers in an array and converting to integers
    number_array = numbers.split(@delimiter).map(&:to_i)

    # Filtering out the negative numbers
    negative_numbers = number_array.select { |n| n < 0 }
    raise "negative numbers not allowed #{negative_numbers.join(", ")}" if negative_numbers.any?

    # Summing the numbers and returning the total sum
    number_array.select { |n| n }.sum
  end
end


# ------------------- Test Cases -------------------
calculator = StringCalculator.new
input_list = [
  "",                # empty string
  "1",               # single number
  "1,2,3",           # multiple numbers
  "1\n2,3",          # multiple numbers with newline
  "1\n2\n3",         # multiple numbers with newline
  "//;\n1;2",        # custom single-character delimiter
  "//[*][%]\n1*2%3"  # custom multi-character delimiter
]

# Negative numbers
negative_input_list = [
  "1,-2,3",
  "1,-2,-3,4"
]
input_list.concat(negative_input_list)

input_list.each do |input|
  begin
    result = calculator.add(input)
    puts "Input: #{input.to_s.inspect} => #{result}"
  rescue => e
    puts "ERROR: Input: #{input.to_s.inspect} => #{e.message}"
  end
  puts '--------------------------------'
end