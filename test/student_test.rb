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

  def test_it_can_log_multiple_scores
    @morgan.log_score(89)
    @morgan.log_score(78)

    assert_equal [89, 78], @morgan.scores
  end

  def test_it_can_return_an_average_of_all_scores
    @morgan.log_score(89)
    @morgan.log_score(78)

    assert_equal 83.5, @morgan.grade
  end
end
