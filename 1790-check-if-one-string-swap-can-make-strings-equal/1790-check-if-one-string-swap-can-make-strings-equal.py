class Solution:
    def areAlmostEqual(self, s1: str, s2: str) -> bool:
        if s1 == s2: return True
        if len(s1) == 1: return False
        
        swap = []
        for i in range(len(s1)):
            if s1[i] != s2[i]:
                swap.append(i)
                if len(swap) > 2: return False
        if len(swap) == 2:
            i, j = swap
            return s1[i]==s2[j] and s1[j]==s2[i]
        return False
        