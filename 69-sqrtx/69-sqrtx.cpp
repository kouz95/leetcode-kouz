class Solution {
public:
    int mySqrt(int x) {
        if (x == 0) {
            return 0;
        }
        int start = 1;
        int end = x;
        
        while (1) {
            int middle = start + (end - start) / 2;
            
            if (middle <= x / middle && (middle + 1) > x / (middle + 1)) {
                return middle;
            }
            else if (middle > x / middle) {
                end = middle - 1;
            }
            else {
                start = middle + 1;
            }
        
        }
        
        return -1;
    }
};
