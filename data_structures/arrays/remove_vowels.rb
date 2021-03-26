# Challenge name: Remove vowels from a string
#
# Given a string s, remove the vowels 'a', 'e', 'i', 'o', and 'u'
# from it, and return the new string.
# Example 1:
# Input: s = "leetcodeisacommunityforcoders"
# Output: "ltcdscmmntyfrcdrs"
#
# Example 2:
# Input: s = "aeiou"
# Output: ""
#
# @param {String} s
# @return {String}

#
# Approach 1: Brute Force
#
# Time Complexity: O(n)
#
def remove_vowels(s)
  result_array = []
  s.downcase
  start_array = s.split('')

  start_array.each do |letter|
    if letter != 'a' && letter != 'e' && letter != 'i' && letter != 'o' && letter != 'u'
      result_array.push(letter)
    end
  end

  result_array.join('')
end

s = 'leetcodeisacommunityforcoders'
print(remove_vowels(s))
# => "ltcdscmmntyfrcdrs"
s = 'aeiou'
print(remove_vowels(s))
# => ""