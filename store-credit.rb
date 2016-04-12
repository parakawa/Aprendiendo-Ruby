# Problem A: Store Credit
# URL: http://code.google.com/codejam/contest/351101/dashboard#s=p0
#
# Author: mu

class StoreCredit
  def self.find_pair(credit, items)
    head = 0
    tail = items.size - 1
    sum = 0

    (head..tail).each do |i|
      items[i] = items[i].to_i
    end

    original = items.dup

    items.sort!
    while head < tail
      sum = items[head] + items[tail]
      if sum == credit
        result = Array.new(2)
        (0..original.size-1).each do |j|
          result[0] ||= j if original[j] == items[head] || original[j] == items[tail]
          result[1] = j if original[j] == items[head] || original[j] == items[tail]
        end
        return result
      end
      head += 1 if sum < credit
      tail -= 1 if sum > credit
    end

    [-1, -1]
  end

  input = File.new("A-large-practice.in", "r")
  output = File.new("A-large-practice.out", "w")
  num_of_tests = input.gets.to_i
  items = []
  result = []

  (1..num_of_tests).each do |i|
    credit = input.gets.to_i
    num_of_items = input.gets.to_i
    items = input.gets.split(" ")
    result = find_pair(credit, items)

    if i < num_of_tests
      output.write "Case ##{i}: #{result[0]+1} #{result[1]+1}\n" 
    else
      output.write "Case ##{i}: #{result[0]+1} #{result[1]+1}"
    end
  end

  input.close
  output.close
end