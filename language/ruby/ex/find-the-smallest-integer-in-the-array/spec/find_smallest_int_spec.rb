# 2018-10-18 Try 2
# My Error was place (Negative-numeral without round-brackets!)

require 'rspec'
# require 'rspec/expectations'

require_relative '../app/find_smallest_int.rb'
require_relative '../app/find_smallest_int.b.rb'

RSpec.describe 'Basic tests: Find minimal number' do
  it 'in array' do
    expect(find_smallest_int([78, 56, 232, 12, 8])).to eq 8

    # NB! Use round-brackets for Negative-Numerals
    expect(find_smallest_int([78, 56, -2, 12, 8])).to eq(-2)
    expect(find_smallest_int([-78, 56, -2, 12, 8])).to eq(-78)
    expect(find_smallest_int([-8])).to eq(-8)
    expect(find_smallest_int([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])).to eq 1

    # expect(find_smallest_int([-1, -2, -3, -4, -5,
    # -6, -7, -8, -9, -10])).to eq(-10)

    # Refactoring for range
    expect(find_smallest_int((-10..-1))).to eq(-10)
  end

  it 'between 2 negatives & others' do
    expect(find_smallest_int([78, 56, -2, 12, -4])).to eq(-4)
  end

  it 'between 2 numerals' do
    expect(find_smallest_int([-5, -3])).to eq(-5)
    expect(find_smallest_int([-3, -5])).to eq(-5)
  end

  it 'between three-digit number also' do
    expect(find_smallest_int([-784, 56, 632, 12, 8])).to eq(-784)
  end
end
