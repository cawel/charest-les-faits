require 'test_helper'

class ExampleTest < ActiveSupport::TestCase
  test "sampling an example returns a random example" do
    assert_not_nil Example.sample([], nil)
  end

  test "sampling an example provides an example of the specified reason" do
    example = Example.sample([], Reason.last)
    assert(example.reasons.include? Reason.last)
  end

  test "sampling should not pick up an exameple from history" do
    example = Example.sample([examples(:one).id], nil)
    assert example == examples(:two)
  end
end
