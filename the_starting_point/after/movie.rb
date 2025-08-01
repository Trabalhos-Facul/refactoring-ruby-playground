require_relative './regular_price'
require_relative './new_release_price'
require_relative './children_price'

class Movie
  REGULAR = 0
  NEW_RELEASE = 1
  CHILDRENS = 2
  attr_reader :title, :price_code

  def initialize(title, price_code)
    @title = title
    self.price_code = price_code
  end

  def price_code=(value)
    @price_code = value
    @price = case @price_code
             when REGULAR then RegularPrice.new
             when NEW_RELEASE then NewReleasePrice.new
             when CHILDRENS then ChildrensPrice.new
             end
  end

  def charge(days_rented)
    @price.charge(days_rented)
  end

  def frequent_renter_points(days_rented)
    @price.frequent_renter_points(days_rented)
  end
end
