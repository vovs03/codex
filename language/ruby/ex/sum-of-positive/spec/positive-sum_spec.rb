require 'rspec'

describe 'positive_sum' do
  it 'works for some examples' do
    Test.assert_equals positive_sum([1, 2, 3, 4, 5]), 15
    Test.assert_equals positive_sum([1, -2, 3, 4, 5]), 13
    Test.assert_equals positive_sum([-1, 2, 3, 4, -5]), 9
  end

  it 'returns 0 when array is empty' do
    Test.assert_equals positive_sum([]), 0
  end

  it 'returns 0 when all elements are negative' do
    Test.assert_equals positive_sum([-1, -2, -3, -4, -5]), 0
  end
end
