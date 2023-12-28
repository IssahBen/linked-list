class Node 
    attr_accessor :data ,:next,:prev
    def initialize(data)
        @data=data
        @next=nil
    end
  end
  
  class Deque
    def initialize
    end
    @head=nil
    def  push(data)
        if @head == nil
            @head=Node.new(data)
        else
            current_node=@head
            previous=@head
            while current_node.next!= nil
                previous=current_node
                current_node=current_node.next
            end
            current_node.next=Node.new(data)
            current_node.next.prev=current_node
        end
    end
    def first
      @head
    end
    def pop
      return nil if @head==nil
      if first.next == nil
        pop=@head
         @head = nil
        return pop.data
      else
  
        current_node=first
        while current_node.next.next != nil
          current_node = current_node.next
        end
        pop=current_node.next
        current_node.next=nil
        return pop.data
      end
    end
    def shift
      if @head == nil
        return nil
      else
        current_node=@head
        shift=current_node
        @head=current_node.next
        return shift.data
      end
    end
    def unshift(data)
      if @head == nil
        @head=Node.new(data)
      else
      current_node=@head
      next_node=@head.next
      @head=Node.new(data)
      @head.next=current_node
      end
    end
      
  end