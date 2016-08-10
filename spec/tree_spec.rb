require File.expand_path('../tree', File.dirname(__FILE__))

describe Tree do
  describe '#payload' do
    it 'returns the payload that was given at initialization' do
      expect(Tree.new(5).payload).to eq 5
    end
  end

  describe '#payload=' do
    it 'throws an exception, as payload cannot be changed after initialization' do
      tree = Tree.new(5)
      expect(->{tree.payload = 8}).to raise_error NoMethodError
    end
  end

  describe '#left_child' do
    it 'returns the left child given in the initializer' do
      tree = Tree.new(3)
      expect(Tree.new(9, left_child: tree).left_child).to eq tree
    end
  end
end