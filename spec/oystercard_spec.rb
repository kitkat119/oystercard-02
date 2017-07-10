require 'oystercard'

describe Oystercard do

  subject(:card) { described_class.new }
  ARBITRARY_TOP_UP = 10

  describe '#initialize' do
    it 'creates a card with a zero balance' do
      expect(card.balance).to eq 0
    end
  end

  describe '#top_up' do
    it 'tops up the card with the given amount' do
      card.top_up(ARBITRARY_TOP_UP)
      expect(card.balance).to eq ARBITRARY_TOP_UP
    end
  end

end