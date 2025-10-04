# String-Calculator-Kata

A Ruby implementation of the String Calculator kata with RSpec tests.

## Setup

Install dependencies:

```bash
bundle install
```

## Running all Tests

Run all tests:

```bash
bundle exec rspec
```

## Features

The `StringCalculator` class provides an `add` method that:

- Returns 0 for an empty string
- Returns the number itself for a single number
- Returns the sum of comma-separated numbers
- Returns the sum of newline-separated numbers
- Returns the sum of custom delimiter-separated numbers
- Returns the sum of numbers greater than 1000
- Raises an exception with the negative number
- Raises an exception with all negative numbers

### Multi-character delimiters

- Supports custom multi-character delimiters
- Supports multiple custom delimiters
- Supports multiple multi-character delimiters


## Usage

```ruby
require_relative 'string_calculator'

calculator = StringCalculator.new

calculator.add("")           # => 0
calculator.add("1")          # => 1
calculator.add("1,2,3")      # => 6
calculator.add("1\n2,3")     # => 6
calculator.add("1\n2\n3")    # => 6
calculator.add("//;\n1;2")   # => 3
calculator.add("//[*][%]\n1*2%3") # => 6
calculator.add("1,1001,2")   # => 3
calculator.add("1,-2,3")     # => raises an exception with the negative number
calculator.add("1,-2,-3,4")  # => raises an exception with all negative numbers
calculator.add("1,1001,2")   # => 3
```

### References
- [TDD Assessment](https://blog.incubyte.co/blog/tdd-assessment/)
- [String Calculator Kata](https://osherove.com/tdd-kata-1/)