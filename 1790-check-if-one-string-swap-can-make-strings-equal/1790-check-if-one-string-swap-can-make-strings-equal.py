class Solution:
    def areAlmostEqual(self, s1: str, s2: str) -> bool:
        if s1 == s2: return True
        if len(s1) == 1: return False
        
        swap = []
        for i in range(len(s1)):
            if s1[i] != s2[i]:
                swap.append(i)
                if len(swap) > 2: return False
        if len(swap) == 1: return False
        s1 = list(s1)
        s1[swap[0]], s1[swap[1]] = s1[swap[1]], s1[swap[0]]
        s1 = "".join(s1)
        # print(swap, s1, s2)
        if s1 == s2: return True
        return False
        