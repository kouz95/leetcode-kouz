class Solution {
public:
    int mySqrt(int x) {
        unsigned long long int start = 0;
        
        while(1) {
            if (start * start == x)  {
                return start;
            }
            else if (start * start > x) {
                return start - 1;
            }
            start++;
        }
        
        return -1;
    }
};