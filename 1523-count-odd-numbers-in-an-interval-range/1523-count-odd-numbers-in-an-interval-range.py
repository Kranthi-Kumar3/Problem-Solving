class Solution:
    def countOdds(self, low: int, high: int) -> int:
        
        """sol 1"""
#         count = 0
#         if low & 1 != 0: count += 1 
            
#         if high %2 == 0: count += (high-low)//2
#         else: count += (high-low+1)//2
        
#         return count

        """sol 2"""
        if low & 1 or high & 1: return (high-low)//2 + 1
        return (high-low)//2