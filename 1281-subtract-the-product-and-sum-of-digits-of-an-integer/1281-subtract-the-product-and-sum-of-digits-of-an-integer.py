class Solution:
    def subtractProductAndSum(self, n: int) -> int:
        
        prod_digits = 1
        sum_digits = 0
        
        while n:
            tmp = n%10
            prod_digits *= tmp
            sum_digits += tmp
            
            n //= 10
            
        return prod_digits - sum_digits
    
    
    