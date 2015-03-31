RSpec.describe DomainDrivenToolkit do
  subject { described_class }

  it 'has a version number' do
    expect(subject::VERSION).not_to be_nil
  end

  describe '#version' do
    it 'returns version number' do
      expect(subject.version).to_not be_nil
    end
  end

  describe '#application' do
    it 'returns class Application' do
      expect(subject.application).to be described_class::Application
    end
  end

  describe '#patterns' do
    it 'returns module Patterns' do
      expect(subject.patterns).to be described_class::Patterns
    end
  end

  describe '#structures' do
    it 'returns module Structures' do
      expect(subject.structures).to be described_class::Structures
    end
  end
end
