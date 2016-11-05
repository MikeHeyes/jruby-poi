RSpec::Matchers.define :equal_at_cell do |expected, row, col|
  match do |actual|
    actual == expected
  end

  failure_message do |actual|
    "expected #{actual} to equal #{expected} (row:#{row}, cell:#{col})"
  end

  failure_message_when_negated do |actual|
    "expected #{actual} not to equal #{expected} (row:#{row}, cell:#{col})"
  end

  description do
    "to equal #{expected}"
  end
end
