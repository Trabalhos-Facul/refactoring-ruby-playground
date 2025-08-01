require_relative './regular_price'
require_relative './new_release_price'
require_relative './children_price'

class Movie
  REGULAR = 0
  NEW_RELEASE = 1
  CHILDRENS = 2
  attr_reader :title
  attr_accessor :price

  def initialize(title, price)
    @title = title
    @price = price
  end

  def charge(days_rented)
    @price.charge(days_rented)
  end

  def frequent_renter_points(days_rented)
    @price.frequent_renter_points(days_rented)
  end
end
