class Task < Post

  def initialize
    super # в дочернем классе означает дерни такой же метод у родительского класса

    @due_data = Time.now
  end

  def read_from_console
  end

  def to_string
  end
end
