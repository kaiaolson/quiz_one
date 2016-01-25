class Stack
  attr_accessor :array
  def initialize
    @array = []
  end

  def add(elm)
    @array << elm
  end

  def remove
    @array.pop
  end

end

class Queue
  attr_accessor :array
  def initialize
    @array =  []
  end

  def add(elm)
    @array << elm
  end

  def remove
    @array.shift
  end
end
