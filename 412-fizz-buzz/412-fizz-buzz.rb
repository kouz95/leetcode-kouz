# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    (1..n).map do |i|
        next 'FizzBuzz' if (i % 15).zero?
        next 'Buzz' if (i % 5).zero?
        next 'Fizz' if (i % 3).zero?
        i.to_s
    end
end