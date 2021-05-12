# Challenge name: Number of good pairs
#
# Given an array of integers nums.
# A pair (i,j) is called good if nums[i] == nums[j] and i < j.
# Return the number of good pairs.
#
# @param {Integer[]} nums
# @return {Integer}
#

#
# Approach 1: Brute Force
#
# Time Complexity: O(n^2)
#
def num_identical_pairs(nums)
  count = 0
  nums.each_with_index do |num, i|
    target = num
    nums.each_with_index do |num, j|
      next if i >= j
      if num == target
        count += 1
      end
    end
  end
  count
end

nums = [1, 2, 3, 1, 1, 3]
puts(num_identical_pairs(nums))
# Output: 4
# Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.

nums = [1, 1, 1, 1]
puts(num_identical_pairs(nums))
# Output: 6
# Explanation: Each pair in the array are good.

nums = [1, 2, 3]
puts(num_identical_pairs(nums))
# Output: 0

#
# Approach 2: Hash
#
def num_identical_pairs(nums)
  hash = Hash.new(0)

  nums.each do |num|
    hash[num] = hash[num] + 1
  end

  counter = 0
  # Count how many times each number appears.
  # If a number appears n times, then n * (n – 1) / 2 good pairs
  # can be made with this number.
  hash.values.each do |val|
    counter += (val * (val - 1) / 2)
  end

  counter
end

nums = [1, 2, 3, 1, 1, 3]
puts(num_identical_pairs(nums))
# Output: 4

nums = [1, 1, 1, 1]
puts(num_identical_pairs(nums))
# Output: 6

nums = [1, 2, 3]
puts(num_identical_pairs(nums))
# Output: 0