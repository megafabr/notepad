require 'date' # подсоединяем библиотеку?

class Task < Post

  def initialize
    super # в дочернем классе означает дерни такой же метод у родительского класса

    @due_data = Time.now
  end

  def read_from_console
    puts "Что надо сделать?"
    @text = STDIN.gets.chomp

    puts "К какому числу? Укажите дату в формате ДД.ММ.ГГГГ, например 23.10.2019"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input) # статический метод parse
  end

  def to_strings
    deadline = "Крайний срок: #{@due_date.strftime('%Y.%m.%d')}"
    time_string = "Создано: #{@created_at.strftime('%Y.%m.%d, %H:%M:%S')} \n"

    [deadline, @text, time_string]
  end
end
