RSpec.describe DomainDrivenToolkit.structures do
  subject { described_class }

  describe '#register' do
    it 'returns class Register' do
      expect(subject.register).to be described_class::Register
    end
  end
end
