RSpec.describe DomainDrivenToolkit.structures.register do
  let(:register_name) { :my_register }

  subject { described_class.new register_name }

  describe '#name' do
    it "returns a name" do
      expect(subject.name).to eq register_name
    end
  end

  describe '#add' do
    context 'when has item with the same name' do
      it 'raises an exception' do
        subject.add :item_1, 1
        expect { subject.add :item_1, 1 }.to raise_error
      end
    end

    context 'when has no item with the same name' do
      it 'adds new item' do
        expect { subject.add :item_1, 1 }.to change { subject.item_names }.from([]).to([:item_1])
      end
    end
  end

  describe '#get' do
    context 'when item exists' do
      it 'returns it' do
        subject.add :item_1, 1
        expect(subject.get :item_1).to eq 1
      end
    end

    context "when item doesn't exist" do
      it 'raises an exception' do
        expect { subject.get :item_1 }.to raise_error
      end
    end
  end

  describe '#item_names' do
    context "when has no items" do
      it 'returns an empty array' do
        expect(subject.item_names).to eq []
      end
    end

    context 'when it has one item' do
      it 'returns an array with one name' do
        subject.add :item_1, 1
        expect(subject.item_names).to eq [:item_1]
      end
    end

    context 'when it has many items' do
      it 'returns an array with names' do
        subject.add :item_1, 1
        subject.add :item_2, 2
        expect(subject.item_names).to eq [:item_1, :item_2]
      end
    end
  end

  describe '#has?' do
    context 'when item exists' do
      it 'returns `true`' do
        subject.add :item_1, 1
        expect(subject.has? :item_1).to eq true
      end
    end

    context "when item doesn't exist" do
      it 'returns `false`' do
        expect(subject.has? :item_2).to eq false
      end
    end
  end
end
