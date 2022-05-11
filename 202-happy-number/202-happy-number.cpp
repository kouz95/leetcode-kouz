class Solution {
public:
    int divideAndSquareSum(int n) {
        int sum = 0;
        while (n) {
            sum += (n % 10) * (n % 10);
            n /= 10;
        }
        
        return sum;
    }
    
    bool isHappy(int n) {
        if (n  == 1) {
            return true;
        }
        int slow = n, fast = n;
        
        slow = divideAndSquareSum(slow);
        fast = divideAndSquareSum(divideAndSquareSum(fast));
        
        while(slow != fast) {
            slow = divideAndSquareSum(slow);
            fast = divideAndSquareSum(divideAndSquareSum(fast));
            
            if (fast == 1 || slow == 1) {
                return true;
            }
        }
        if (fast == 1 || slow == 1) {
            return true;
        }
        return false;
    }
};