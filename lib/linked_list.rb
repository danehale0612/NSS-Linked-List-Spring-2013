require 'linked_list_item'

class LinkedList
  attr_reader :first_item

  def initialize *args
  end

  def add_item(payload)
    
    item = LinkedListItem.new(payload)
    if @first_item.nil?
      @first_item = item
    else
      final_item = @first_item
      while !final_item.last?
        final_item = final_item.next_list_item
      end
      final_item.next_list_item = item
    end
  end

  def get(n)
    item = @first_item
    n.times do
      raise IndexError if item.nil?
      item = item.next_list_item
    end
    item.payload
  end

  def last
    item = @first_item
    return nil if item.nil?
    until item.last?
      item = item.next_list_item
    end
    item.payload
  end

  
  def size
    size = 0
    index = @first_item
    until index.nil? do 
      index = index.next_list_item
      size += 1
    end
    size
  end

  def to_s
    if @first_item.nil?
      "| |"
    else
      item = @first_item
      payloads = item.payload
      while !item.last?
        item = item.next_list_item
        payloads += ", " + item.payload
      end
     return  "| #{payloads} |"
    end
  end

  # ========= Bonus ========== #

  def [](payload)
  end

  def []=(n, payload)
  end

  def remove(n)
  end

end
