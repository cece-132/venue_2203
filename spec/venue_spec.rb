require 'rspec'
require './lib/venue'

describe Venue do
  describe '#initialize' do
    it 'exists and has attributes' do
      venue = Venue.new('Bluebird', 4)
      expect(venue).to be_a Venue
      expect(venue.name).to be_a String
      expect(venue.capacity).to be_a Integer
      expect(venue.patrons).to be_a Array
      expect(venue.patrons).to be_empty
    end
  end

  # Iteration 2

  describe '#add_patron' do
    it 'returns a list of patrons' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')

      expect(venue.patrons).to eq ['Mike', 'Megan', 'Bob']
    end
  end

  describe '#yell_at_patrons' do
    it 'returns a list of uppercased names' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')
      expect(venue.yell_at_patrons).to eq ['MIKE', 'MEGAN', 'BOB']
    end
  end

  describe '#over_capacity?' do
    it 'returns true if venue is over capacity' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')

      expect(venue.over_capacity?).to eq false

      venue.add_patron('Trish')
      venue.add_patron('Aaron')

      expect(venue.over_capacity?).to eq true
    end
  end
end
