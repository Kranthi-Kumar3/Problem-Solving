class Solution:
    arr = []
    def sum_of_squares_of_digits(self, n):
        ans = 0
        while n>0:
            ans += (n%10)**2
            n //= 10
        return ans
    
    def reset(self):
        Solution.arr = []
    
    def isHappy(self, n: int) -> bool:
        arr = self.arr
        # print(arr)
        if n == 1: 
            self.reset()
            return True
        if n in arr: 
            self.reset()
            return False
        arr.append(n)
        return self.isHappy(self.sum_of_squares_of_digits(n))