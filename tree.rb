class Tree
  attr_reader :payload, :left_child, :right_child

  def initialize(payload, left_child: nil, right_child: nil)
    @payload = payload
    @left_child = left_child
    @right_child = right_child
  end
end