require('minitest/autorun')
require('minitest/rg')
require_relative('../homework.rb')

class StudentTest < MiniTest::Test

  def setup()
    @student = Student.new("Alan", "G10")
  end

  def test_student_has_name()
    assert_equal("Alan", @student.name())
  end


  def test_student_has_cohort()
    assert_equal("G10", @student.cohort())
  end

  def test_can_set_name()
    @student.set_name("John")
    assert_equal("John", @student.name())
  end

def test_can_set_cohort()
  @student.set_cohort("G12")
  assert_equal("G12", @student.cohort())
end

def test_if_student_can_talk()
  talking = @student.talk("I can talk!")
  assert_equal("I can talk!", talking)
end

def test_say_favourite_language()
  sentence = @student.say_favourite_language("Ruby")
  assert_equal("I love Ruby!", sentence)
end

end
