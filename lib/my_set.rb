# your code here

require "pry"

class MySet

  def initialize(enumerable = [])
    @hash = {}
    enumerable.each do |value|
      @hash[value] = true
    end
    
  end

  def self.[]
    @hash.to_a
  end

  def include?(value)
    @hash.has_key?(value)
  end

  def add(value)
    @hash[value] = true
    self
  end
   
  def delete(value)
    @hash.delete(value)
    self
  end

  def size
    @hash.size
  end

  def clear
    @hash.clear
    return self
  end

  def each
    @hash.each_value {|value| puts value}
    return self
  end

  def inspect
    @hash.each_value {|value| print value}
  end
      

end

