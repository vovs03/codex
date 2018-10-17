# 1. Sum of positive

<!-- TOC -->

- [1. Sum of positive](#1-sum-of-positive)
  - [1.1. :dart: Kata](#11-dart-kata)
  - [1.2. :scroll: Instructions](#12-scroll-instructions)
    - [1.2.1. :pencil: Tags](#121-pencil-tags)
  - [1.3. :horse: Tests](#13-horse-tests)

<!-- /TOC -->

## 1.1. :dart: Kata

Look exersize on [codewars](https://www.codewars.com/kata/sum-of-positive/train/ruby)

## 1.2. :scroll: Instructions

> You get an array of numbers, return the sum of all of the positives ones.  
> Example [1,-4,7,12] => 1 + 7 + 12 = 20  
> Note: if there is nothing to sum, the sum is default to 0.

### 1.2.1. :pencil: Tags

| Language | Version   | Tags         |
| -------- | --------- | ------------ |
| Ruby     | MRI 2.5.0 | Fundamentals |
| :gem:    | :gem:     | Arrays       |
| :gem:    | :gem:     | Numbers      |

## 1.3. :horse: Tests

Sample Tests:

```ruby
describe "positive_sum" do
  it "works for some examples" do
    Test.assert_equals positive_sum([1,2,3,4,5]), 15
    Test.assert_equals positive_sum([1,-2,3,4,5]), 13
    Test.assert_equals positive_sum([-1,2,3,4,-5]), 9
  end

  it "returns 0 when array is empty" do
    Test.assert_equals positive_sum([]), 0
  end

  it "returns 0 when all elements are negative" do
    Test.assert_equals positive_sum([-1,-2,-3,-4,-5]), 0
  end
end
```
