class OddPrimes
  def initialize
    @current = 1
    @primes = []
  end
  def next
    while not prime?(@current += 2)
    end
    @primes << @current
    @current
  end
  def prime?(n)
    i = 0
    p = 1
    while true
      break if i >= @primes.length
      p = @primes[i]
      break if p * p > n
      break if n % p == 0
      i += 1
    end
    return i >= @primes.length || p * p > n
  end
end

n = 600851475143
max_p = 1
op = OddPrimes.new
while n>1
  max_p = op.next
  while n % max_p == 0
    n /= max_p
  end
end

puts max_p