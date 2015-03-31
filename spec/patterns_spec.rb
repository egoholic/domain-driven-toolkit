RSpec.describe DomainDrivenToolkit.patterns do
  subject { described_class }

  describe '#value' do
    it 'returns class Value' do
      expect(subject.value).to be described_class::Value
    end
  end

  describe '#entity' do
    it 'returns class Entity' do
      expect(subject.entity).to be described_class::Entity
    end
  end

  describe '#service' do
    it 'returns class Service' do
      expect(subject.service).to be described_class::Service
    end
  end

  describe '#factory' do
    it 'returns class Factory' do
      expect(subject.factory).to be described_class::Factory
    end
  end

  describe '#repository' do
    it 'returns class Repository' do
      expect(subject.repository).to be described_class::Repository
    end
  end
end
