# A stack is an abstract data type that serves as a collection of
# elements with two principal operations: push() and pop(). push() adds an
# element to the top of the stack, and pop() removes an element from the top
# of a stack. The order in which elements come off of a stack are
# Last In, First Out (LIFO)

class StackOverflowError < StandardError; end

class Stack
  def initialize(stack, limit)
    @stack = []
    @limit = limit
  end

  attr_accessor :stack, :limit

  def push(item)
    if stack.count < limit
      stack << item
    else
      raise StackOverflowError
    end
  end

  def pop
    stack.pop
  end

  def peek
    stack.last
  end

  def is_empty?
    stack.count == 0
  end

  def is_full
    stack.count == limit
  end

  def size
    stack.count
  end

  def contains?(item)
    stack.include?(item)
  end
end

stack = Stack.new([], 10)

puts stack.is_empty?
# => true

stack.push(3)
stack.push(5)
stack.push(7)
stack.push(9)

puts stack.is_full
# => false

puts stack.contains?(5)
# => true

puts stack.pop
# => 9

puts stack.peek
# => 7

puts stack.size
# => 3

puts stack.inspect
# => #<Stack:0x00007fceed83eb40 @stack=[3, 5, 7], @limit=10>
