require 'rspec'
require_relative 'hello'

RSpec.describe Hello do
  shared_context 'initialized Hello' do
    subject(:hello) { described_class.new }

    let(:result) { 'Hello world' }
    let(:number1) { 2 }
    let(:number2) { 3 }
  end

  describe '#execute' do
    include_context 'initialized Hello'

    it 'returns a greeting message' do
      expect(hello.execute).to eq(result)
    end
  end

  describe '#tambahan' do
    include_context 'initialized Hello'

    it 'adds two numbers' do
      expect(hello.tambahan(number1, number2)).to eq(number1 + number2)
    end
  end
end
