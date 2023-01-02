import sys

class Solution:
    def nearestValidPoint(self, x: int, y: int, points: List[List[int]]) -> int:
        ans = sys.maxsize
        idx = -1
        for i in range(len(points)):
            if x==points[i][0] or y==points[i][1]:
                man_dist = abs(x - points[i][0]) + abs(y - points[i][1])
                if ans > man_dist:
                    ans = man_dist
                    idx = i
        return idx