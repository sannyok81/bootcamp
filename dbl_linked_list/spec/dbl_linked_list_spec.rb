require 'node'

RSpec.describe DblLinkedList do
  before do
    @dblLinkedList = DblLinkedList::List.new
  end

  it "has a version number" do
    expect(DblLinkedList::VERSION).not_to be nil
  end

  it "tests push" do
    @dblLinkedList.push :first
    expect(1).to eq(@dblLinkedList.length)
    expect(:first).to eq(@dblLinkedList.first)
    expect(:first).to eq(@dblLinkedList.last)

    @dblLinkedList.push :second
    expect(2).to eq(@dblLinkedList.size)
    expect(:first).to eq(@dblLinkedList.first)
    expect(:second).to eq(@dblLinkedList.last)
  end

  it "tests unshift" do
    @dblLinkedList.unshift :first
    expect(1).to eq(@dblLinkedList.length)
    expect(:first).to eq(@dblLinkedList.first)
    expect(:first).to eq(@dblLinkedList.last)

    @dblLinkedList.unshift :second
    expect(2).to eq(@dblLinkedList.size)
    expect(:second).to eq(@dblLinkedList.first)
    expect(:first).to eq(@dblLinkedList.last)
  end

  context "fill list" do
    before do
      @dblLinkedList.push :first
      @dblLinkedList.push :second
      @dblLinkedList.push :third
    end

    it "tests pop" do
      pop = @dblLinkedList.pop
      expect(:third).to eq(pop)
      expect(2).to eq(@dblLinkedList.length)

      @dblLinkedList.pop
      pop = @dblLinkedList.pop

      expect(:first).to eq(pop)
      expect(0).to eq(@dblLinkedList.length)

      pop = @dblLinkedList.pop

      expect(nil).to eq(pop)
      expect(0).to eq(@dblLinkedList.length)
    end

    it "tests shift" do
      shift = @dblLinkedList.shift
      expect(:first).to eq(shift)
      expect(2).to eq(@dblLinkedList.length)

      @dblLinkedList.shift
      shift = @dblLinkedList.shift

      expect(:third).to eq(shift)
      expect(0).to eq(@dblLinkedList.length)

      shift = @dblLinkedList.shift

      expect(nil).to eq(shift)
      expect(0).to eq(@dblLinkedList.length)
    end
  end
end
