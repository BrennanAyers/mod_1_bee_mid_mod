require 'minitest/autorun'
require 'minitest/pride'
require './lib/student'
require './lib/course'
class CourseTest < Minitest::Test
  def setup
    @course = Course.new("Calculus", 2)
    @morgan = Student.new({name: "Morgan", age: 21})
    @jordan = Student.new({name: "Jordan", age: 29})
  end

  def test_it_exists
    assert_instance_of Course, @course
  end

  def test_it_has_argument_attributes
    assert_equal "Calculus", @course.name
    assert_equal 2, @course.capacity
  end

  def test_it_starts_with_no_students
    assert_equal [], @course.students
    refute @course.full?
  end

  def test_it_can_enroll_students
    @course.enroll(@morgan)
    @course.enroll(@jordan)

    assert_equal [@morgan, @jordan], @course.students
  end

  def test_it_can_return_true_when_full_of_students
    @course.enroll(@morgan)
    refute @course.full?

    @course.enroll(@jordan)
    assert @course.full?
  end
end
