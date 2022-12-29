class Solution:
    def countOdds(self, low: int, high: int) -> int:
        
        """Approach 1"""
#         count = 0
#         if low & 1 != 0: count += 1 
            
#         if high %2 == 0: count += (high-low)//2
#         else: count += (high-low+1)//2
        
#         return count

        """Approach 2"""
        # if low & 1 or high & 1: return (high-low)//2 + 1
        # return (high-low)//2
        
        """Approach 3"""
        return (high+1)//2 - low//2