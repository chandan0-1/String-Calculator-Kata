# String-Calculator-Kata

[![Ruby Tests](https://github.com/chandan0-1/String-Calculator-Kata/workflows/Ruby%20Tests/badge.svg)](https://github.com/chandan0-1/String-Calculator-Kata/actions)

## 🚀 Quick Actions

[![Run Tests](https://img.shields.io/badge/Run%20Tests-Locally-brightgreen?style=for-the-badge&logo=ruby)](https://github.com/chandan0-1/String-Calculator-Kata#local-testing)
[![View Coverage](https://img.shields.io/badge/View%20Coverage-Report-blue?style=for-the-badge&logo=codecov)](https://github.com/chandan0-1/String-Calculator-Kata#code-coverage)
[![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-Run%20Tests-orange?style=for-the-badge&logo=github)](https://github.com/chandan0-1/String-Calculator-Kata/actions)

A Ruby implementation of the String Calculator kata with RSpec tests.

## Setup

Install dependencies:

```bash
bundle install
```

## Running all Tests

Run all tests with code coverage:

```bash
bundle exec rspec
```

View detailed coverage report:

```bash
open coverage/index.html
```

**Current Coverage: 100.0% (74/74 lines covered)**

## GitHub Actions

This project uses GitHub Actions for continuous integration:

- **Automatic Testing**: Tests run on every push and pull request
- **Coverage Reports**: Coverage data uploaded as artifacts
- **PR Comments**: Coverage percentage commented on pull requests
- **Status Badges**: Real-time test status displayed in README

### Local Testing

Run tests locally:

```bash
# Using the test script
./test.sh
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


## 🎯 Interactive Examples

Try these examples in your terminal or online:

```ruby
require_relative 'string_calculator'

calculator = StringCalculator.new

# Basic examples
calculator.add("")           # => 0
calculator.add("1")          # => 1
calculator.add("1,2,3")      # => 6

# Mixed delimiters
calculator.add("1\n2,3")     # => 6
calculator.add("1\n2\n3")    # => 6

# Custom delimiters
calculator.add("//;\n1;2")   # => 3
calculator.add("//[*][%]\n1*2%3") # => 6

# Edge cases
calculator.add("1,1001,2")   # => 3 (ignores 1001)
calculator.add("1,-2,3")     # => raises exception
calculator.add("1,-2,-3,4")  # => raises exception
```

### 🧪 Test It Yourself

Click the buttons above to:
- **Run Tests Locally** - See how to test on your machine
- **View Coverage** - Check test coverage reports  
- **GitHub Actions** - See automated test results
- **Try Online** - Run code in browser (when available)

### References
- [TDD Assessment](https://blog.incubyte.co/blog/tdd-assessment/)
- [String Calculator Kata](https://osherove.com/tdd-kata-1/)