#!/bin/bash

echo "🧪 Running String Calculator Tests..."
echo "=================================="

# Run RSpec tests
bundle exec rspec

# Check if tests passed
if [ $? -eq 0 ]; then
    echo ""
    echo "✅ All tests passed!"
    echo "📊 Coverage report generated in coverage/index.html"
    echo ""
    echo "To view coverage report:"
    echo "open coverage/index.html"
else
    echo ""
    echo "❌ Some tests failed!"
    exit 1
fi
