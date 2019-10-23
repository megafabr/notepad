class Link < Post # дочерний класс

  def initialize
    super # в дочернем классе означает дерни такой же метод у родительского класса

    @url = ''
  end

  def read_from_console
    puts "Aдрес ссылки:"
    @url = STDIN.gets.chomp

    puts "Что за ссылка?"
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Создано: #{@ctreated_at.strftime('%Y.%m.%d, %H:%M:%S')} \n"

    [@url, @text, time_string]
  end
end
