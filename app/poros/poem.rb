class Poem
  attr_reader :title, :author, :text

  def initialize(data)
    @title = data[:title]
    @author = data[:author]
    @text = data[:lines].join(" ")
  end
end
