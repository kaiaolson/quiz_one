class Book
  attr_accessor :title, :chapters
  def initialize
    @chapters = []
  end
  def add_chapter(chapter)
    @chapters << chapter
  end
  def chapters
    "Your book: #{@title} has #{@chapters.length} chapters:"
    @chapters.each do |chapter|
      puts "#{@chapters.index(chapter) + 1}. #{chapter}"
    end
  end
end
