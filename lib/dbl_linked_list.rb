require "dbl_linked_list/version"

module DblLinkedList
  class List
    attr_reader :length
    alias_method :size, :length

    def initialize
      @head = nil
      @tail = nil
      @length = 0
    end

    def first
      @head && @head.data
    end

    def last
      @tail && @tail.data
    end

    def pop
      return nil if @length == 0

      tail = @tail
      @tail = @tail.previous
      @tail.next = nil if @tail
      @head = nil unless @tail

      @length -= 1
      tail.data
    end

    def push(data)
      node = Node.new data
      @head ||= node

      if @tail
        @tail.next = node
        node.previous = @tail
      end

      @tail = node
      @length += 1

      self
    end

    alias_method :<<, :push

    def shift
      return nil if @length == 0

      head = @head
      @head = @head.next
      @head.previous = nil if @head
      @tail = nil unless @head

      @length -= 1
      head.data
    end

    def unshift(data)
      node = Node.new data
      @tail ||= node

      node.next = @head
      @head.previous = node if @head
      @head = node

      @length += 1

      self

    end

  end
end
