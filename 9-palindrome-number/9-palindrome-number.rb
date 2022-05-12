# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    false if x < 0
    
    p = x
    q = 0
    
    while p >= 10
        q *= 10
        q += p % 10
        p /= 10
    end
    
    
    q == x / 10 && p == x % 10
end