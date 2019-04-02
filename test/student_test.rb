require 'minitest/autorun'
require 'minitest/pride'
require './lib/student'
class StudentTest < Minitest::Test
  def setup
    @morgan = Student.new({name: "Morgan", age: 21})
  end

  def test_it_exists
    assert_instance_of Student, @morgan
  end

  def test_it_has_argument_attributes
    assert_equal "Morgan", @morgan.name
    assert_equal 21, @morgan.age
  end

  def test_it_starts_with_no_scores
    assert_equal [], @morgan.scores
  end
end
