
class Link < Post # дочерний класс

  def initialize
    super # в дочернем классе означает дерни такой же метод у родительского класса

    @url = ''
  end

  def read_from_console
  end

  def to_string
  end
end