class Solution:
    def isPalindrome(self, x):
        if x < 0:
            return False
        else:
            temp = x
            rev = 0
            while temp != 0:
                rev = rev * 10 + temp % 10
                temp //= 10
            return rev == x