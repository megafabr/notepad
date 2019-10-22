class Post
  def initialize
    @created_at = Time.now
    @text = nil # пока пустой
  end

  def read_from_console
    # todo
  end

  def to_strings
    # todo
  end

  def save
    file = File.new(file_path, "w:UTF-8")

    for item in to_strings do
      file.puts(item)
    end
    file.close
  end

  def file_path
    current_path = File.dirname(__FILE___)

    file_name = @created_atstrftime("#{self.class.name}_%Y-%m-$d_%H-%M-%S/txt")

    return current_path + "/" + file_name
  end
end
