# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    res = []
    
    (1..n).each do |i|
        if i % 15 == 0
            res.push('FizzBuzz')
            next
        end
        
        if i % 3 == 0
            res.push('Fizz')
            next
        end
        
        if i % 5 == 0
            res.push('Buzz')
            next
        end
        
        res.push(i.to_s)
    end
    
    res
end