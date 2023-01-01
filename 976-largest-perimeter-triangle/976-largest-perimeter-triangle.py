class Solution:
    
    def checkTriangle(self, a, b, c):
        if a<(b+c) and b<(a+c) and c<(a+b):  return True
        return False
    
    def largestPerimeter(self, nums: List[int]) -> int:
        # self.nums = nums
        max_perimeter = 0
        nums.sort()
        for i in range(len(nums)-3, -1, -1):
            if Solution.checkTriangle(self, nums[i], nums[i+1], nums[i+2]):
                max_perimeter = max(max_perimeter, nums[i]+nums[i+1]+nums[i+2])
        return max_perimeter
        