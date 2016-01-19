require 'test_helper'

class AgeClassTest < ActiveSupport::TestCase
  test 'should not save Age Class without name' do
    age = AgeClass.new
    age.from=14
    age.to=16
    assert_not age.save, 'Saved AgeClass without name'
  end

  test 'should not save Age Class with swapped ages' do
    age = AgeClass.new
    age.name='Blaa'
    age.from=16
    age.to=14
    assert_not age.save, 'Saved AgeClass with swapped ages'
  end

  test 'should not save Age Class without from' do
    age = AgeClass.new
    age.name='U42'
    age.to=14
    assert_not age.save, 'Saved AgeClass without from'
  end

  test 'should not save Age Class without to' do
    age = AgeClass.new
    age.name='U42'
    age.from=14
    assert_not age.save, 'Saved AgeClass without to'
  end
end
