class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        hashmap ={}
        for i in range(0, len(nums)):
            k = target-nums[i]
            if k in hashmap:
                return [i, hashmap[k]]
            hashmap[nums[i]] = i
        return {}
            