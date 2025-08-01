require_relative '../after/movie'
require_relative '../after/custumer'
require_relative '../after/rental'
require_relative '../after/regular_price'

RSpec.describe Customer do
  describe '#statement' do
    john = Customer.new(:john)
    cool_movie = Movie.new('Cool movie', RegularPrice.new)
    rental = Rental.new(cool_movie, 2)
    john.add_rental rental

    it 'returns the sum of its arguments' do
      expect(john.statement).to eq("Rental Record for john\n\tCool movie\t2\nAmount owed is 2\nYou earned 1 frequent renter points")
    end
  end
end
