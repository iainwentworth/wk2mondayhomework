class Library

  def initialize(title, student_name, due_date)
    @title = title
    @student_name = student_name
    @due_date = due_date
  end

  def get_book_name()
    @title
  end

end
