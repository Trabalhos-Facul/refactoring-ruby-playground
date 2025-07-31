require_relative '../before/movie'
require_relative '../before/custumer'
require_relative '../before/rental'

RSpec.describe Customer do
  describe '#statement' do
    john = Customer.new(:john)
    cool_movie = Movie.new('Cool movie', 0)
    rental = Rental.new(cool_movie, 2)
    john.add_rental rental

    it 'returns the sum of its arguments' do
      expect(john.statement).to eq("Rental Record for john\n\tCool movie\t2\nAmount owed is 2\nYou earned 1 frequent renter points")
    end
  end
end
