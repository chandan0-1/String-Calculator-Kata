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


## Usage

```ruby
require_relative 'string_calculator'

calculator = StringCalculator.new

calculator.add("")           # => 0
calculator.add("1")          # => 1
```
