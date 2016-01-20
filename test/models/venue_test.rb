require 'test_helper'

class VenueTest < ActiveSupport::TestCase

  test 'should not save Venues without mandatory params' do
    venue = Venue.new.tap do |v|
      v.street = 'Wandsbeker Zollstraße 12'
      v.plz    = '23341'
      v.city   = 'Hamburg'
    end
    assert_not venue.save, 'Saved Venue without name'

    venue = Venue.new.tap do |v|
      v.name   = 'Cabrio Sport'
      v.plz    = '23341'
      v.city   = 'Hamburg'
    end
    assert_not venue.save, 'Saved Venue without street'

    venue = Venue.new.tap do |v|
      v.name   = 'Cabrio Sport'
      v.street = 'Wandsbeker Zollstraße 12'
      v.city   = 'Hamburg'
    end
    assert_not venue.save, 'Saved Venue without plz'

    venue = Venue.new.tap do |v|
      v.name   = 'Cabrio Sport'
      v.street = 'Wandsbeker Zollstraße 12'
      v.plz    = '23341'
    end
    assert_not venue.save, 'Saved Venue without city'
  end

end
