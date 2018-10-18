# https://www.codewars.com/kata/find-the-smallest-integer-in-the-array/solutions?show-solutions=1

def find_smallest_int(arr)
  arr.sort!
  arr[0]
end
