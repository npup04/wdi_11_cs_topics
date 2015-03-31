require 'pry'

class BinaryTree
  # your code here
  attr_reader :value
  attr_accessor :left_branch, :right_branch

  def initialize(value)
    @value = value
  end

  def insert(value)
    if value < @value
      if @left_branch
# binding.pry
        @left_branch.insert(value)
      else
        @left_branch = BinaryTree.new(value)
      end

    elsif value > @value
      if @right_branch
        @right_branch.insert(value)
      else
        @right_branch = BinaryTree.new(value)
      end

    else
      #DUPLICATE
    end

  end #insert

  def destroy(value)
  end

  def find(leaf_value)
    if leaf_value == @value
      return self
    end

    if value < @value
      self.left_branch.find(leaf_value)
    elsif value > @value
      self.right_branch.find(leaf_value)
    else

    end

  end #find

end

