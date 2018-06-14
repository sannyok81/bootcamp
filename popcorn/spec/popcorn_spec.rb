RSpec.describe Popcorn do
  it "has a version number" do
    expect(Popcorn::VERSION).not_to be nil
  end

  it "is_word" do
    expect(true).to eq(Popcorn.is_word "pop")
    expect(true).to eq(Popcorn.is_word "popcorn")
    expect(true).to eq(Popcorn.is_word "corn")
  end

  it "Link.get_other_value" do
    node1 = Node.new "0"
    node2 = Node.new "P"
    link = Link.new node1, node2

    expect(node1).to eq(link.get_other_value node2)
  end

  it "contain_part_word" do
    expect("corn").to eq(Popcorn.contain_part_word "corn")
    expect(nil).to eq(Popcorn.contain_part_word "cornel")
  end

  it "find_by_node" do
    expect(%w(pop popcorn porno poop).sort).to eq(Popcorn.find_by_node(PopcornGraph::NODES[3]).sort)
  end

  it "find_all" do
    expect(Popcorn::VOCABULARY.sort).to eq(Popcorn.find_all.sort)
  end
end
