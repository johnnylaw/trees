class Tree
  attr_reader :payload, :left_child

  def initialize(payload, left_child: nil)
    @payload = payload
    @left_child = left_child
  end
end