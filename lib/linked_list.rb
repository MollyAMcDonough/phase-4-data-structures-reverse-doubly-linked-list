require_relative './node'
require 'pry'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    # your code here
    if @head
      if @head.next_node
        current = self.head
        prev_node = self.tail
        self.head = self.tail
        while current
          prev_node = current.prev_node
          current.prev_node = current.next_node
          current.next_node = prev_node
          current = current.prev_node
        end
        self.tail = prev_node.next_node
      end
    end
    self
  end
end
